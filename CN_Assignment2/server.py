import socket
import json
import csv
import time
from datetime import datetime
from scapy.all import DNS
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet
import os
import subprocess
import traceback

def kill_tcp_port(port):
    try:
        out = subprocess.check_output(['lsof', '-i', f'TCP:{port}', '-sTCP:LISTEN']).decode()
        lines = out.strip().split('\n')
        for line in lines[1:]:
            pid = int(line.split()[1])
            if pid != os.getpid():
                print(f"[!] Killing process {pid} using TCP port {port}")
                try:
                    os.kill(pid, 9)
                except Exception as ex:
                    print(f"[!] Could not kill PID={pid}: {ex}")
        time.sleep(0.5)
    except subprocess.CalledProcessError:
        print(f"[*] No process is using TCP port {port}")

# You may optionally include caching logic
dns_cache = {}

with open("rules.json", "r") as f:
    rules = json.load(f)
ip_pool = rules["ip_pool"]
time_rules = rules["timestamp_rules"]["time_based_routing"]

def resolve_ip(custom_header, domain_name):
    hour = int(custom_header[:2])
    query_id = int(custom_header[-2:])

    if 4 <= hour <= 11:
        rule = time_rules["morning"]
        step = "AssignmentRule-Morning"
    elif 12 <= hour <= 19:
        rule = time_rules["afternoon"]
        step = "AssignmentRule-Afternoon"
    else:
        rule = time_rules["night"]
        step = "AssignmentRule-Night"

    # Cache lookup:
    if domain_name in dns_cache:
        resolved_ip = dns_cache[domain_name]
        cache_status = "HIT"
        resolution_mode = "Cache"
    else:
        ip_index = rule["ip_pool_start"] + (query_id % rule["hash_mod"])
        resolved_ip = ip_pool[ip_index]
        cache_status = "MISS"
        resolution_mode = "AssignmentRule"
        dns_cache[domain_name] = resolved_ip  # Cache store

    server_ip = "10.0.0.5"  # Real DNS resolver IP

    return resolved_ip, step, server_ip, resolution_mode, cache_status

def log_detailed(entry):
    try:
        with open("server_detailed_log.json", "a") as logf:
            logf.write(json.dumps(entry) + "\n")
    except Exception as log_exc:
        print(f"Logging error: {log_exc}")

def start_server():
    host = "0.0.0.0"
    port = 5000
    kill_tcp_port(5000)
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind((host, port))
    server_socket.listen(5)
    print(f"[*] Server listening on {host}:{port}")

    results = []
    while True:
        try:
            client_socket, addr = server_socket.accept()
            print(f"[+] Connected to {addr}")
            try:
                client_socket.settimeout(10)
                q_start = time.time()
                data = client_socket.recv(65535)
                if not data:
                    print(f"[!] No data received from {addr}")
                    client_socket.close()
                    continue

                t_query_recv = datetime.now().isoformat()
                try:
                    custom_header = data[:8].decode()
                    dns_packet_bytes = data[8:]
                    dns_packet = DNS(dns_packet_bytes)
                    if not hasattr(dns_packet, 'qd') or not hasattr(dns_packet.qd, 'qname'):
                        print("Malformed packet (no qd/qname field), skipping.")
                        client_socket.close()
                        continue
                    domain_name = dns_packet.qd.qname.decode().strip(".")
                except Exception as e:
                    print(f"Error parsing DNS packet from {addr}: {e}")
                    traceback.print_exc()
                    client_socket.close()
                    continue

                s_start = time.time()
                resolved_ip, step, server_ip, resolution_mode, cache_status = resolve_ip(custom_header, domain_name)
                s_end = time.time()
                print(f"Resolved: {domain_name} → {resolved_ip}")

                results.append([custom_header, domain_name, resolved_ip])
                client_socket.send(resolved_ip.encode())
                t_done = time.time()

                log_entry = {
                    "timestamp": t_query_recv,
                    "domain": domain_name,
                    "resolution_mode": resolution_mode,
                    "server_ip": server_ip,
                    "step": step,
                    "response": resolved_ip,
                    "rtt": round((s_end - s_start) * 1000, 3),
                    "total_time": round((t_done - q_start) * 1000, 3),
                    "cache_status": cache_status
                }
                log_detailed(log_entry)

            except Exception as e:
                print(f"Error processing request from {addr}: {e}")
                traceback.print_exc()
            finally:
                client_socket.close()

            # CSV and PDF updates omitted for brevity

        except Exception as outer_exc:
            print(f"Exception in accept or main loop: {outer_exc}")
            traceback.print_exc()
            time.sleep(1)

if __name__ == "__main__":
    start_server()
