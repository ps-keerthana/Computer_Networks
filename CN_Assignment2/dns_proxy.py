#!/usr/bin/env python3
"""
DNS UDP Proxy Adapter: Forwards real DNS packets to your TCP custom DNS server and relays response.
"""
import os
import socket
import subprocess
import time
import datetime # <-- ADDED for time-based header generation
from scapy.all import DNS, DNSQR  # Only for parsing, not for network ops

def kill_udp_port(port):
    """Kill any process holding UDP port (must be run as root)."""
    try:
        out = subprocess.check_output(['lsof', '-i', f'UDP:{port}']).decode()
        lines = out.strip().split('\n')
        for line in lines[1:]:  # skip header
            pid = int(line.split()[1])
            if pid != os.getpid():
                print(f"[!] Killing process {pid} using UDP port {port}")
                try:
                    os.kill(pid, 9)
                except Exception as ex:
                    print(f"[!] Could not kill PID={pid}: {ex}")
        time.sleep(0.5)
    except subprocess.CalledProcessError:
        print(f"[*] No process is currently using UDP port {port}")

PROXY_LISTEN = ('0.0.0.0', 53)
CUSTOM_SERVER = ('10.0.0.5', 5000)


def extract_domain_and_build_query(request):
    try:
        dns = DNS(request)
        domain = dns[DNSQR].qname.decode().strip('.')
        question = request[12:request.find(b'\x00', 12)+5]
        return domain, question
    except Exception as e:
        print("[!] Failed parsing DNS request:", e)
        return None, None

def build_basic_a_reply(trans_id, question, ip):
    # Parse the original question QNAME length
    qname_end = question.find(b'\x00') + 1
    qname = question[:qname_end]  # domain part + null terminator
    qtype_qclass = question[qname_end:qname_end+4]

    # DNS header: QR=1 (answer), OPCODE=0, AA=0, TC=0, RD=1, RA=1, Z=0, RCODE=0
    header = trans_id + b'\x81\x80\x00\x01\x00\x01\x00\x00\x00\x00'
    question_section = qname + qtype_qclass   # QNAME, QTYPE, QCLASS

    # Answer section (use pointer to question for NAME = 0xc00c)
    answer = b'\xc0\x0c' + b'\x00\x01\x00\x01\x00\x00\x00\x3c\x00\x04'
    answer += socket.inet_aton(ip)
    return header + question_section + answer


# MODIFIED: Accepts transaction ID bytes to create a dynamic custom header
def send_to_custom_server(domain, trans_id_bytes):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.connect(CUSTOM_SERVER)
    
    # 1. Get Transaction ID (Last 2 bytes of the custom header)
    trans_id_int = int.from_bytes(trans_id_bytes, byteorder='big')
    # Use modulo 100 to fit into 2 digits (as your server expects 2 digits, ID)
    query_id_str = f"{(trans_id_int % 100):02d}" 
    
    # 2. Get Time (First 6 bytes of the custom header: HHMMSS)
    # The server only reads HH (first two digits) for time-based routing.
    time_str = datetime.datetime.now().strftime("%H%M%S")
    
    # Custom Header is HHMMSS + Query ID = 8 bytes total
    custom_header_full = (time_str + query_id_str).encode() 
    custom_header = custom_header_full[:8] # Ensure exactly 8 bytes
    
    # Send custom header + DNS Query
    dns_pkt = DNS(rd=1, qd=DNSQR(qname=domain))
    msg = custom_header + bytes(dns_pkt)
    
    sock.send(msg)
    result = sock.recv(1024)
    sock.close()
    ip = result.decode().strip()
    return ip

def main():
    kill_udp_port(53)
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind(PROXY_LISTEN)
    print(f"[*] DNS UDP proxy listening on {PROXY_LISTEN}...")
    try:
        while True:
            data, addr = sock.recvfrom(512)
            trans_id = data[0:2]
            domain, question = extract_domain_and_build_query(data)
            if not domain or not question:
                continue
            print(f"[*] Got DNS query for {domain} from {addr}")

            # MODIFIED: Pass trans_id (the transaction ID) to the sender function
            try:
                ip = send_to_custom_server(domain, trans_id)
            except Exception as e:
                print(f"[!] Failed to contact custom server for {domain}: {e}")
                ip = "0.0.0.0"

            print(f"[*] {domain} → {ip}")

            reply = build_basic_a_reply(trans_id, question, ip)
            sock.sendto(reply, addr)
    except Exception as e:
        print("[!] Proxy main loop exception:", e)
        import traceback
        traceback.print_exc()
        sock.close()    
if __name__ == "__main__":
    main()