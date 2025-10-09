import socket
import json
import csv
from scapy.all import DNS
from reportlab.lib.pagesizes import letter
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph, Spacer
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet


# Load rules.json

with open("rules.json", "r") as f:
    rules = json.load(f)

ip_pool = rules["ip_pool"]
time_rules = rules["timestamp_rules"]["time_based_routing"]

# Function: resolve_ip
# Purpose: Determine resolved IP based on custom header and time rules
def resolve_ip(custom_header, domain_name):
    hour = int(custom_header[:2])  # HH
    query_id = int(custom_header[-2:])  # ID

    # Determine time slot based on hr
    if 4 <= hour <= 11:
        rule = time_rules["morning"]
    elif 12 <= hour <= 19:
        rule = time_rules["afternoon"]
    else:
        # Night: 20–23 or 0–3
        rule = time_rules["night"]

    # Select IP using modulo and pool start
    ip_index = rule["ip_pool_start"] + (query_id % rule["hash_mod"])
    resolved_ip = ip_pool[ip_index]
    return resolved_ip

# Function: start_server
# Purpose: Listen for incoming DNS queries, resolve, and respond

def start_server():
    host = "127.0.0.1"
    port = 5000

    # Create TCP socket and start listening
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((host, port))
    server_socket.listen(5)

    print(f"[*] Server listening on {host}:{port}")

    results = []

    while True:
        client_socket, addr = server_socket.accept()
        with client_socket:
            print(f"[+] Connected to {addr}")
            try:
                # Receive data from client
                data = client_socket.recv(65535)
                if not data:
                    continue

                # Extract custom header (first 8 bytes) and DNS packet
                custom_header = data[:8].decode()
                dns_packet_bytes = data[8:]
                dns_packet = DNS(dns_packet_bytes)
                domain_name = dns_packet.qd.qname.decode().strip(".")

                # Resolve IP based on custom header
                resolved_ip = resolve_ip(custom_header, domain_name)
                print(f"Resolved: {domain_name} → {resolved_ip}")

                # Save result
                results.append([custom_header, domain_name, resolved_ip])

                # Send back resolved IP to client
                client_socket.send(resolved_ip.encode())

            except Exception as e:
                print(f"Error processing request: {e}")

        # Update CSV after each request (can also do once at the end)
        with open("dns_results_server.csv", "w", newline="") as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["Custom Header", "Domain Name", "Resolved IP"])
            writer.writerows(results)

        # Update PDF report
        doc = SimpleDocTemplate("DNS_Resolver_Report.pdf", pagesize=letter)
        elements = []
        styles = getSampleStyleSheet()
        elements.append(Paragraph("DNS Resolver Report", styles["Title"]))
        elements.append(Spacer(1, 12))
        table_data = [["Custom Header", "Domain Name", "Resolved IP"]] + results
        table = Table(table_data)
        table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.gray),
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
            ("BOTTOMPADDING", (0, 0), (-1, 0), 12),
            ("GRID", (0, 0), (-1, -1), 1, colors.black),
        ]))
        elements.append(table)
        doc.build(elements)

if __name__ == "__main__":
    start_server()