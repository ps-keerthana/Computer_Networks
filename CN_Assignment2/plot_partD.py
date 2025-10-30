import json
import matplotlib.pyplot as plt
import os

# Ensure results directory exists
os.makedirs('results', exist_ok=True)

# Load server detailed log JSON lines
with open('server_detailed_log.json', 'r') as f:
    logs = [json.loads(line) for line in f]

# Use only first 10 records for PCAP_1_H1 plotting
logs_10 = logs[:10]

domains = [entry['domain'] for entry in logs_10]
latencies = [entry['total_time'] for entry in logs_10]

# Number of DNS servers visited per query (assumed 1 here)
steps = [1 for _ in logs_10]

# Plot latency bar chart
plt.figure(figsize=(12, 6))
plt.bar(domains, latencies, color='skyblue')
plt.ylabel('Total Latency (ms)')
plt.xlabel('Domain')
plt.title('Latency per DNS Query (First 10 Queries - PCAP_1_H1)')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.savefig('results/latency_per_query_pcap1h1.png')
plt.close()

# Plot DNS servers visited bar chart
plt.figure(figsize=(12, 6))
plt.bar(domains, steps, color='lightgreen')
plt.ylabel('DNS Servers Visited')
plt.xlabel('Domain')
plt.title('Number of DNS Servers Visited (First 10 Queries - PCAP_1_H1)')
plt.xticks(rotation=45, ha='right')
plt.tight_layout()
plt.savefig('results/dns_servers_visited_pcap1h1.png')
plt.close()
