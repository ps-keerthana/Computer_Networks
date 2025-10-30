#!/usr/bin/env python3
"""
DNS URL Resolution Script for Part B
Runs DNS queries INSIDE Mininet hosts using default resolver
Measures latency, throughput, and success/failure rates
"""

import json
import os
from scapy.all import rdpcap, DNS, DNSQR

def extract_urls_from_pcap(pcap_file):
    """Extract DNS query URLs from PCAP file"""
    urls = []
    try:
        packets = rdpcap(pcap_file)
        for packet in packets:
            if packet.haslayer(DNS) and packet.haslayer(DNSQR):
                query_name = packet[DNSQR].qname.decode('utf-8').rstrip('.')
                if query_name and query_name not in urls:
                    urls.append(query_name)
        print(f"Extracted {len(urls)} unique URLs from {pcap_file}")
    except Exception as e:
        print(f"Error reading PCAP {pcap_file}: {e}")
    
    return urls

def generate_resolve_script(urls, host_name, output_file):
    """
    Generate a bash script that will run inside a Mininet host
    to resolve URLs and measure metrics
    """
    
    # Create the header
    script_content = f"""#!/bin/bash
# DNS Resolution Script for {host_name}

OUTPUT_FILE="{output_file}"
RESULTS_FILE="/tmp/{host_name}_raw_results.txt"

# Initialize counters
total_urls={len(urls)}
successful=0
failed=0
total_latency=0

# Clear output files
> $OUTPUT_FILE
> $RESULTS_FILE

echo "Starting DNS resolution for {host_name}..."
echo "Total URLs to resolve: $total_urls"
echo ""

"""

    # Add resolution commands for each URL
    for i, url in enumerate(urls, 1):
        # Escape special characters in URL for bash
        escaped_url = url.replace('"', '\\"').replace('$', '\\$').replace('`', '\\`')
        
        script_content += f"""
# Resolve URL {i}: {escaped_url}
echo "Resolving [{i}/{len(urls)}]: {escaped_url}"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 {escaped_url} 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|{escaped_url}|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|{escaped_url}|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi
"""

    # Add summary calculation
    script_content += f"""
# Calculate summary metrics
if [ $successful -gt 0 ]; then
    avg_latency=$((total_latency / successful))
else
    avg_latency=0
fi

# Approximate throughput (bytes per second)
total_data=$((successful * 200))
total_time_seconds=$((total_latency / 1000))
if [ $total_time_seconds -gt 0 ]; then
    avg_throughput=$((total_data / total_time_seconds))
else
    avg_throughput=0
fi

# Generate JSON output
echo '{{' > $OUTPUT_FILE
echo '  "host": "{host_name}",' >> $OUTPUT_FILE
echo '  "total_urls": '$total_urls',' >> $OUTPUT_FILE
echo '  "successful_resolutions": '$successful',' >> $OUTPUT_FILE
echo '  "failed_resolutions": '$failed',' >> $OUTPUT_FILE
echo '  "average_latency_ms": '$avg_latency',' >> $OUTPUT_FILE
echo '  "average_throughput_bps": '$avg_throughput',' >> $OUTPUT_FILE
echo '  "results": [' >> $OUTPUT_FILE

# Parse results file and generate JSON entries
first=true
while IFS='|' read -r status url latency ip; do
    if [ "$first" = true ]; then
        first=false
    else
        echo ',' >> $OUTPUT_FILE
    fi

    if [ "$status" = "  SUCCESS" ]; then
        echo '    {{"url": "'$url'", "success": true, "latency_ms": '$latency', "ip_address": "'$ip'"}}' >> $OUTPUT_FILE
    else
        echo '    {{"url": "'$url'", "success": false, "latency_ms": '$latency', "ip_address": null}}' >> $OUTPUT_FILE
    fi
done < $RESULTS_FILE

echo '  ]' >> $OUTPUT_FILE
echo '}}' >> $OUTPUT_FILE

# Print summary
echo ""
echo "=========================================="
echo "Summary for {host_name}"
echo "=========================================="
echo "Total URLs: $total_urls"
echo "Successful Resolutions: $successful"
echo "Failed Resolutions: $failed"
echo "Average Latency: $avg_latency ms"
echo "Average Throughput: $avg_throughput bytes/sec"
echo "Results saved to: $OUTPUT_FILE"
echo "=========================================="
echo ""
"""
    
    return script_content


def main():
    """Main function to prepare resolution scripts for each host"""
    
    # Define host-to-PCAP mapping
    pcap_mapping = {
        'h1': 'pcap_files/PCAP_1_H1.pcap',
        'h2': 'pcap_files/PCAP_2_H2.pcap',
        'h3': 'pcap_files/PCAP_3_H3.pcap',
        'h4': 'pcap_files/PCAP_4_H4.pcap'
    }
    
    # Create results directory
    os.makedirs('results', exist_ok=True)
    os.makedirs('scripts', exist_ok=True)
    
    print("\n" + "="*60)
    print("Generating DNS resolution scripts for each host")
    print("="*60 + "\n")
    
    # Generate resolution script for each host
    for host, pcap_file in pcap_mapping.items():
        if os.path.exists(pcap_file):
            print(f"Processing {host} - {pcap_file}")
            
            # Extract URLs from PCAP
            urls = extract_urls_from_pcap(pcap_file)
            
            if urls:
                # Generate bash script for this host
                script_file = f'scripts/resolve_{host}.sh'
                output_file = f'/tmp/{host}_results.json'
                
                script_content = generate_resolve_script(urls, host, output_file)
                
                with open(script_file, 'w') as f:
                    f.write(script_content)
                
                # Make script executable
                os.chmod(script_file, 0o755)
                
                print(f"  Generated: {script_file}")
                print(f"  Output will be: {output_file}")
            else:
                print(f"  No URLs found in {pcap_file}")
        else:
            print(f"Warning: PCAP file not found: {pcap_file}")
    
    print("\n" + "="*60)
    print("Scripts generated successfully!")
    print("="*60)
    print("\nNext steps:")
    print("1. Start your Mininet topology: sudo python3 topology.py")
    print("2. In the Mininet CLI, run for each host:")
    print("   mininet> h1 bash ./scripts/resolve_h1.sh")
    print("   mininet> h2 bash ./scripts/resolve_h2.sh")
    print("   mininet> h3 bash ./scripts/resolve_h3.sh")
    print("   mininet> h4 bash ./scripts/resolve_h4.sh")
    print("3. Collect results from /tmp/*_results.json")
    print("="*60 + "\n")

if __name__ == '__main__':
    main()
