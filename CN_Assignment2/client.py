import socket
from scapy.all import rdpcap, DNS
from datetime import datetime
import sys
import json
import os

def generate_custom_header(seq_id):
    now = datetime.now()
    timestamp = now.strftime("%H%M%S")  # HHMMSS
    return f"{timestamp}{seq_id:02d}"  # HHMMSSID

def start_client(pcap_file, output_json):
    try:
        packets = rdpcap(pcap_file)
    except Exception as e:
        print(f"[!] Could not read PCAP file: {e}")
        return

    dns_queries = [pkt for pkt in packets if pkt.haslayer(DNS) and pkt[DNS].qr == 0]
    if not dns_queries:
        print("[!] No DNS queries found in the given PCAP.")
        return

    host_name = os.path.basename(output_json).split('_')[0]
    results = []
    summary = {
        "host": host_name,
        "total_queries": len(dns_queries),
        "successful_resolutions": 0,
        "failed_resolutions": 0,
        "average_latency_ms": 0,
        "results": []
    }
    latencies = []

    server_ip = "10.0.0.5"
    port = 5000

    for idx, pkt in enumerate(dns_queries):
        domain, resolved_ip, latency_ms, success = None, None, None, False
        try:
            domain = pkt[DNS].qd.qname.decode().strip(".")
            custom_header = generate_custom_header(idx)
            message = custom_header.encode() + bytes(pkt[DNS])
            t_start = datetime.now()
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as client_socket:
                client_socket.settimeout(4)
                client_socket.connect((server_ip, port))
                client_socket.send(message)
                resolved_ip = client_socket.recv(1024).decode()
            t_end = datetime.now()
            latency_ms = int((t_end - t_start).total_seconds() * 1000)
            success = resolved_ip is not None and resolved_ip not in ["Error", "0.0.0.0", ""]
        except Exception as e:
            print(f"Error connecting to server: {e}")
            resolved_ip = None
            latency_ms = None
            success = False

        print(f"{custom_header} | {domain} → {resolved_ip}")
        results.append({
            "url": domain,
            "success": success,
            "latency_ms": latency_ms if latency_ms is not None else -1,
            "ip_address": resolved_ip
        })

        if success and latency_ms is not None:
            latencies.append(latency_ms)

    # summary
    summary["successful_resolutions"] = sum(1 for r in results if r["success"])
    summary["failed_resolutions"] = sum(1 for r in results if not r["success"])
    summary["average_latency_ms"] = int(sum(latencies)/len(latencies)) if latencies else 0
    summary["results"] = results

    with open(output_json, "w") as f:
        json.dump(summary, f, indent=2)
    print(f"[+] Wrote {output_json}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 client.py <pcap_file> [output_json]")
        sys.exit(1)
    # Default output file: h1_results_partD.json for PCAP_1_H1.pcap etc.
    pcap_file = sys.argv[1]
    tag = os.path.basename(pcap_file).replace("PCAP_", "").replace(".pcap", "").lower()
    output_json = sys.argv[2] if len(sys.argv) > 2 else f"results/{tag}_results_partD.json"
    start_client(pcap_file, output_json)
