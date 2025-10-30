import json
import sys

def load_results(filename):
    with open(filename, 'r') as f:
        return json.load(f)

def compare_results(partb_file, partd_file):
    partb = load_results(partb_file)
    partd = load_results(partd_file)

    print(f"Comparing results for host: {partb['host']}")

    print("\nSummary Statistics:")
    print(f"Part B - Total URLs: {partb['total_urls']}, Successful: {partb['successful_resolutions']}, Failed: {partb['failed_resolutions']}, Average Latency: {partb['average_latency_ms']} ms")
    print(f"Part D - Total URLs: {partd['total_queries']}, Successful: {partd['successful_resolutions']}, Failed: {partd['failed_resolutions']}, Average Latency: {partd['average_latency_ms']} ms")

    print("\nPer-URL comparison:")
    b_results = {r['url']: r for r in partb['results']}
    d_results = {r['url']: r for r in partd['results']}

    all_urls = sorted(set(b_results.keys()).union(d_results.keys()))
    print(f"{'URL':50s} | {'PartB Success':12s} | {'PartB IP':15s} | {'PartD Success':12s} | {'PartD IP':15s}")
    print('-'*110)
    for url in all_urls:
        b = b_results.get(url, {'success': False, 'ip_address': None})
        d = d_results.get(url, {'success': False, 'ip_address': None})

        b_succ = 'Yes' if b['success'] else 'No'
        d_succ = 'Yes' if d['success'] else 'No'
        b_ip = b['ip_address'] or "N/A"
        d_ip = d['ip_address'] or "N/A"

        print(f"{url:50s} | {b_succ:12s} | {b_ip:15s} | {d_succ:12s} | {d_ip:15s}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 compare_partB_partD.py <partB_result.json> <partD_result.json>")
        sys.exit(1)

    partb_file = sys.argv[1]
    partd_file = sys.argv[2]

    compare_results(partb_file, partd_file)
