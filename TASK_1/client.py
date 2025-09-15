import socket
from scapy.all import rdpcap, DNS
from datetime import datetime
import csv

# Function: generate_custom_header
# Purpose: Create a custom header for each DNS query
# Format: HHMMSSID (Hour, Minute, Second, Query ID)

def generate_custom_header(seq_id):
    now = datetime.now()
    timestamp = now.strftime("%H%M%S")  # HHMMSS
    return f"{timestamp}{seq_id:02d}"  # HHMMSSID


# Function to start client
# Reads PCAP, sends DNS queries with custom header to server

def start_client(pcap_file):
    # Read packets from PCAP
    packets = rdpcap(pcap_file)
    # Filter only DNS query packets (qr == 0 means query)
    dns_queries = [pkt for pkt in packets if pkt.haslayer(DNS) and pkt[DNS].qr == 0]

    host = "127.0.0.1"
    port = 5000
    results = []

    # Iterate over each DNS query
    for idx, pkt in enumerate(dns_queries):
        domain = pkt[DNS].qd.qname.decode().strip(".")  # Get domain name
        custom_header = generate_custom_header(idx) # Generate custom header

        # Prepare message: custom header (8 bytes) + raw DNS packet bytes
        message = custom_header.encode() + bytes(pkt[DNS])

        # Connect to server, send, receive response
        try:
            # Create TCP socket and send the message to server
            with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as client_socket:
                client_socket.connect((host, port))
                client_socket.send(message)
                # Receive resolved IP from server
                resolved_ip = client_socket.recv(1024).decode()
        except Exception as e:
            print(f"Error connecting to server: {e}")
            resolved_ip = "Error"

        # Log the result in console
        print(f"{custom_header} | {domain} → {resolved_ip}")
        results.append([custom_header, domain, resolved_ip])

    # Save all results to CSV (after all queries)
    with open("dns_results_client.csv", "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["Custom Header", "Domain Name", "Resolved IP"])
        writer.writerows(results)

# entry point
if __name__ == "__main__":
    start_client("8.pcap")  # Change based on your team roll numbers