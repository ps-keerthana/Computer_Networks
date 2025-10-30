import json
import time
import os
from mininet.net import Mininet
from mininet.log import setLogLevel, info
from mininet.link import TCLink
from mininet.node import OVSSwitch

# Import your custom topology definition
from dns_topology import DNSTopo

def test_dns_in_mininet(net):
    """
    Runs DNS query performance tests against the default resolver (8.8.8.8) 
    and saves results to 'results' folder.
    """
    hosts_domains = {
        'h1': 'domains/domains_PCAP_1_H1.txt',
        'h2': 'domains/domains_PCAP_2_H2.txt',
        'h3': 'domains/domains_PCAP_3_H3.txt',
        'h4': 'domains/domains_PCAP_4_H4.txt',
    }

    # --- CHANGE 1: Create 'results' directory ---
    os.makedirs('results', exist_ok=True)
    info("\n" + "="*50)
    info("PART B: TESTING DEFAULT RESOLVER (8.8.8.8) PERFORMANCE")
    info("="*50)

    for hname, domainfile in hosts_domains.items():
        print(f"\n--- Testing DNS queries for {hname} ---")
        host = net.get(hname)

        if not os.path.exists(domainfile):
            print(f"ERROR: Domain file not found at {domainfile}. Skipping {hname}.")
            continue

        with open(domainfile, 'r') as f:
            # Uses all domains in the file
            domains = [line.strip() for line in f if line.strip()]

        # Initialize metrics
        results = []
        successful, failed = 0, 0
        latencies = []

        for domain in domains:
            start = time.time()
            output = host.cmd(f'dig +time=3 +tries=1 {domain}')
            end = time.time()

            latency_ms = (end - start) * 1000
            
            # Check for successful resolution (Answer Section present, no common failures)
            if 'ANSWER SECTION' in output and 'NXDOMAIN' not in output and 'SERVFAIL' not in output:
                successful += 1
                latencies.append(latency_ms)
                print(f"  > {domain} resolved in {latency_ms:.2f} ms")
                success = True
            else:
                failed += 1
                # Output last line of dig for context on failure (e.g., connection issue)
                print(f"  > {domain} failed to resolve ({output.splitlines()[-1].strip()})") 
                success = False

            results.append({'domain': domain, 'success': success, 'latency_ms': latency_ms})

        total_queries = successful + failed
        avg_latency = sum(latencies) / len(latencies) if latencies else 0
        total_time_s = sum(latencies) / 1000
        throughput = successful / total_time_s if total_time_s else 0

        # Required Summary Structure for JSON Output
        summary = {
            'average_lookup_latency_ms': avg_latency,
            'average_throughput_q_per_sec': throughput,
            'successful_queries': successful,
            'failed_resolutions': failed,
            # Added for completeness, but not strictly required by your final list:
            'total_queries': total_queries, 
        }

        # --- CHANGE 2: Save to 'results/hX_results.json' ---
        output_file = os.path.join('results', f"{hname}_results.json")
        with open(output_file, 'w') as outfile:
            # Save the summary and all detailed results
            json.dump({'summary': summary, 'results': results}, outfile, indent=4)

        print(f"\nSummary for {hname} (Default Resolver):")
        print(f"Successful/Total: {successful}/{total_queries}")
        print(f"Average Latency (ms): {avg_latency:.2f}")
        print(f"Throughput (queries/sec): {throughput:.2f}")
        print(f"Results saved to {output_file}")


def main():
    setLogLevel('info')
    info("=== Starting Mininet topology for Part B DNS test ===")

    topo = DNSTopo()
    net = Mininet(topo=topo, link=TCLink, switch=OVSSwitch, controller=None)
    net.start()
    
    # Enable OVS to act as a normal L2 bridge
    for sw in net.switches:
        sw.cmd('ovs-ofctl add-flow %s action=normal' % sw.name)

    hosts = [net.get(name) for name in ['h1', 'h2', 'h3', 'h4']]
    
    # PART B CONFIGURATION: Set hosts to use the default external resolver (8.8.8.8)
    info('[*] Configuring hosts to use external default nameserver (8.8.8.8).\n')
    for h in hosts:
        h.cmd('echo "nameserver 8.8.8.8" > /etc/resolv.conf')
        
    print(f" --- h1 /etc/resolv.conf Content ---")
    print(net.get('h1').cmd('cat /etc/resolv.conf').strip()) 

    test_dns_in_mininet(net)

    print("\nMininet network stopped. Part B test complete.")
    net.stop()


if __name__ == "__main__":
    main()