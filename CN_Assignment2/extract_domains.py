#!/usr/bin/env python3
"""
Simple script to extract domain names from PCAP files and save them 
as required text files for Mininet Part B testing.
"""

import os
from scapy.all import rdpcap, DNS, DNSQR

def extract_urls_from_pcap(pcap_file):
    """Extract unique DNS query URLs from PCAP file using scapy."""
    urls = []
    try:
        # Load domains using rdpcap (assuming scapy is installed)
        packets = rdpcap(pcap_file)
        for packet in packets:
            # Check for DNS layer and DNS Query Record layer
            if packet.haslayer(DNS) and packet.haslayer(DNSQR):
                # Decode the query name and remove trailing dot
                query_name = packet[DNSQR].qname.decode('utf-8').rstrip('.')
                if query_name and query_name not in urls:
                    urls.append(query_name)
        print(f"Extracted {len(urls)} unique URLs from {pcap_file}")
    except Exception as e:
        print(f"Error reading PCAP {pcap_file}: {e}")
    
    return urls

def main():
    # Define host-to-PCAP mapping
    pcap_mapping = {
        'H1': 'pcap_files/PCAP_1_H1.pcap',
        'H2': 'pcap_files/PCAP_2_H2.pcap',
        'H3': 'pcap_files/PCAP_3_H3.pcap',
        'H4': 'pcap_files/PCAP_4_H4.pcap'
    }
    
    # Create the target directory for domain lists
    os.makedirs('domains', exist_ok=True)
    
    print("\n" + "="*60)
    print("Extracting Domains from PCAP files...")
    print("="*60 + "\n")
    
    for host_num, pcap_file in pcap_mapping.items():
        if os.path.exists(pcap_file):
            print(f"Processing {pcap_file}")
            
            # 1. Extract URLs
            urls = extract_urls_from_pcap(pcap_file)
            
            if urls:
                # 2. Define the required output filename
                output_file = f'domains/domains_PCAP_{host_num.split("H")[1]}_{host_num}.txt'
                
                # 3. Write URLs to the file, one per line
                with open(output_file, 'w') as f:
                    f.write('\n'.join(urls) + '\n')
                
                print(f"  Saved {len(urls)} domains to: {output_file}")
            else:
                print(f"  No DNS queries found in {pcap_file}. File not created.")
        else:
            print(f"Warning: PCAP file not found: {pcap_file}. Skipping {host_num}.")

if __name__ == '__main__':
    main()