#!/bin/bash
# DNS Resolution Script for h2

OUTPUT_FILE="/tmp/h2_results.json"
RESULTS_FILE="/tmp/h2_raw_results.txt"

# Initialize counters
total_urls=100
successful=0
failed=0
total_latency=0

# Clear output files
> $OUTPUT_FILE
> $RESULTS_FILE

echo "Starting DNS resolution for h2..."
echo "Total URLs to resolve: $total_urls"
echo ""


# Resolve URL 1: likeminded.ca
echo "Resolving [1/100]: likeminded.ca"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 likeminded.ca 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|likeminded.ca|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|likeminded.ca|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 2: alltransport.ru
echo "Resolving [2/100]: alltransport.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 alltransport.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|alltransport.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|alltransport.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 3: brown.edu
echo "Resolving [3/100]: brown.edu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 brown.edu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|brown.edu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|brown.edu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 4: fauzanalfi.com
echo "Resolving [4/100]: fauzanalfi.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 fauzanalfi.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|fauzanalfi.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|fauzanalfi.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 5: supreetsethi.net
echo "Resolving [5/100]: supreetsethi.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 supreetsethi.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|supreetsethi.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|supreetsethi.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 6: gucenmez.com
echo "Resolving [6/100]: gucenmez.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gucenmez.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gucenmez.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gucenmez.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 7: seedy.dk
echo "Resolving [7/100]: seedy.dk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 seedy.dk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|seedy.dk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|seedy.dk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 8: 51cdngo.com
echo "Resolving [8/100]: 51cdngo.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 51cdngo.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|51cdngo.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|51cdngo.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 9: simple-health-reports.com
echo "Resolving [9/100]: simple-health-reports.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 simple-health-reports.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|simple-health-reports.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|simple-health-reports.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 10: hivelocitymedia.com
echo "Resolving [10/100]: hivelocitymedia.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hivelocitymedia.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hivelocitymedia.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hivelocitymedia.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 11: jabeye.org
echo "Resolving [11/100]: jabeye.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 jabeye.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|jabeye.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|jabeye.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 12: ticketbis.com
echo "Resolving [12/100]: ticketbis.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ticketbis.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ticketbis.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ticketbis.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 13: cellularfactory.com
echo "Resolving [13/100]: cellularfactory.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cellularfactory.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cellularfactory.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cellularfactory.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 14: tsksv.ru
echo "Resolving [14/100]: tsksv.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tsksv.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tsksv.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tsksv.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 15: gaybodyblog.com
echo "Resolving [15/100]: gaybodyblog.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gaybodyblog.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gaybodyblog.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gaybodyblog.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 16: datadikdki.net
echo "Resolving [16/100]: datadikdki.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 datadikdki.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|datadikdki.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|datadikdki.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 17: mumphi.de
echo "Resolving [17/100]: mumphi.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mumphi.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mumphi.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mumphi.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 18: brfone.com
echo "Resolving [18/100]: brfone.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 brfone.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|brfone.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|brfone.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 19: newpages2u.com
echo "Resolving [19/100]: newpages2u.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 newpages2u.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|newpages2u.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|newpages2u.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 20: bigjournalism.com
echo "Resolving [20/100]: bigjournalism.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bigjournalism.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bigjournalism.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bigjournalism.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 21: congsoxanh.com
echo "Resolving [21/100]: congsoxanh.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 congsoxanh.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|congsoxanh.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|congsoxanh.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 22: visualtap.com
echo "Resolving [22/100]: visualtap.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 visualtap.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|visualtap.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|visualtap.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 23: oberoncompany.com
echo "Resolving [23/100]: oberoncompany.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 oberoncompany.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|oberoncompany.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|oberoncompany.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 24: consejodentistas.org
echo "Resolving [24/100]: consejodentistas.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 consejodentistas.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|consejodentistas.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|consejodentistas.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 25: k-dsl.de
echo "Resolving [25/100]: k-dsl.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 k-dsl.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|k-dsl.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|k-dsl.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 26: asip.es
echo "Resolving [26/100]: asip.es"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 asip.es 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|asip.es|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|asip.es|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 27: androgyn.org
echo "Resolving [27/100]: androgyn.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 androgyn.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|androgyn.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|androgyn.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 28: panaceadream.com
echo "Resolving [28/100]: panaceadream.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 panaceadream.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|panaceadream.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|panaceadream.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 29: hotel.ch
echo "Resolving [29/100]: hotel.ch"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hotel.ch 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hotel.ch|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hotel.ch|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 30: c3budiman.tk
echo "Resolving [30/100]: c3budiman.tk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 c3budiman.tk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|c3budiman.tk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|c3budiman.tk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 31: obtscan.com
echo "Resolving [31/100]: obtscan.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 obtscan.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|obtscan.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|obtscan.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 32: phoenix-music.ru
echo "Resolving [32/100]: phoenix-music.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 phoenix-music.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|phoenix-music.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|phoenix-music.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 33: motiie.com
echo "Resolving [33/100]: motiie.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 motiie.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|motiie.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|motiie.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 34: cncdesign.co.kr
echo "Resolving [34/100]: cncdesign.co.kr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cncdesign.co.kr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cncdesign.co.kr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cncdesign.co.kr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 35: udoo24.com
echo "Resolving [35/100]: udoo24.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 udoo24.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|udoo24.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|udoo24.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 36: ljyelectronic.com
echo "Resolving [36/100]: ljyelectronic.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ljyelectronic.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ljyelectronic.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ljyelectronic.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 37: bek.ir
echo "Resolving [37/100]: bek.ir"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bek.ir 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bek.ir|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bek.ir|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 38: valerievandenbroek.nl
echo "Resolving [38/100]: valerievandenbroek.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 valerievandenbroek.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|valerievandenbroek.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|valerievandenbroek.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 39: lacuentaperdida.org
echo "Resolving [39/100]: lacuentaperdida.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lacuentaperdida.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lacuentaperdida.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lacuentaperdida.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 40: alkoholiker-clan.de
echo "Resolving [40/100]: alkoholiker-clan.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 alkoholiker-clan.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|alkoholiker-clan.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|alkoholiker-clan.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 41: doommovie.com
echo "Resolving [41/100]: doommovie.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 doommovie.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|doommovie.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|doommovie.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 42: xqgcab.com
echo "Resolving [42/100]: xqgcab.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 xqgcab.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|xqgcab.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|xqgcab.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 43: uanet.net
echo "Resolving [43/100]: uanet.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 uanet.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|uanet.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|uanet.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 44: tomorrowsreflection.com
echo "Resolving [44/100]: tomorrowsreflection.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tomorrowsreflection.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tomorrowsreflection.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tomorrowsreflection.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 45: lighthouse.cc
echo "Resolving [45/100]: lighthouse.cc"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lighthouse.cc 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lighthouse.cc|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lighthouse.cc|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 46: 7sports.jp
echo "Resolving [46/100]: 7sports.jp"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 7sports.jp 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|7sports.jp|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|7sports.jp|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 47: gamepsvita.com
echo "Resolving [47/100]: gamepsvita.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gamepsvita.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gamepsvita.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gamepsvita.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 48: thunderex.com
echo "Resolving [48/100]: thunderex.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 thunderex.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|thunderex.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|thunderex.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 49: zamlelova.ru
echo "Resolving [49/100]: zamlelova.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 zamlelova.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|zamlelova.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|zamlelova.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 50: atomicbase.com
echo "Resolving [50/100]: atomicbase.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 atomicbase.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|atomicbase.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|atomicbase.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 51: qdushu.com
echo "Resolving [51/100]: qdushu.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 qdushu.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|qdushu.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|qdushu.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 52: raqualia.com
echo "Resolving [52/100]: raqualia.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 raqualia.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|raqualia.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|raqualia.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 53: fanzi.pl
echo "Resolving [53/100]: fanzi.pl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 fanzi.pl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|fanzi.pl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|fanzi.pl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 54: womenology.com
echo "Resolving [54/100]: womenology.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 womenology.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|womenology.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|womenology.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 55: tonaci.com
echo "Resolving [55/100]: tonaci.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tonaci.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tonaci.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tonaci.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 56: youngsnetwork.it
echo "Resolving [56/100]: youngsnetwork.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 youngsnetwork.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|youngsnetwork.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|youngsnetwork.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 57: gvowebcast.com
echo "Resolving [57/100]: gvowebcast.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gvowebcast.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gvowebcast.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gvowebcast.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 58: aspiringwriter.ca
echo "Resolving [58/100]: aspiringwriter.ca"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 aspiringwriter.ca 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|aspiringwriter.ca|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|aspiringwriter.ca|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 59: heygal.net
echo "Resolving [59/100]: heygal.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 heygal.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|heygal.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|heygal.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 60: mpskota.com
echo "Resolving [60/100]: mpskota.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mpskota.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mpskota.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mpskota.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 61: ohdev.co.uk
echo "Resolving [61/100]: ohdev.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ohdev.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ohdev.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ohdev.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 62: topilehtipuu.com
echo "Resolving [62/100]: topilehtipuu.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 topilehtipuu.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|topilehtipuu.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|topilehtipuu.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 63: thereeftank.com
echo "Resolving [63/100]: thereeftank.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 thereeftank.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|thereeftank.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|thereeftank.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 64: volksschule-neufahrn.de
echo "Resolving [64/100]: volksschule-neufahrn.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 volksschule-neufahrn.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|volksschule-neufahrn.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|volksschule-neufahrn.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 65: qingjiaopidaiji.com
echo "Resolving [65/100]: qingjiaopidaiji.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 qingjiaopidaiji.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|qingjiaopidaiji.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|qingjiaopidaiji.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 66: jcwcn.com
echo "Resolving [66/100]: jcwcn.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 jcwcn.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|jcwcn.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|jcwcn.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 67: huhgmbh.com
echo "Resolving [67/100]: huhgmbh.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 huhgmbh.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|huhgmbh.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|huhgmbh.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 68: redcrosseth.org
echo "Resolving [68/100]: redcrosseth.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 redcrosseth.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|redcrosseth.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|redcrosseth.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 69: lookpage.org
echo "Resolving [69/100]: lookpage.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lookpage.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lookpage.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lookpage.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 70: mplus.hk
echo "Resolving [70/100]: mplus.hk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mplus.hk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mplus.hk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mplus.hk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 71: sandieskorner.com
echo "Resolving [71/100]: sandieskorner.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sandieskorner.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sandieskorner.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sandieskorner.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 72: sinemagrafik.com
echo "Resolving [72/100]: sinemagrafik.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sinemagrafik.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sinemagrafik.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sinemagrafik.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 73: itattoos.org
echo "Resolving [73/100]: itattoos.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 itattoos.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|itattoos.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|itattoos.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 74: lgmonitorreview.nl
echo "Resolving [74/100]: lgmonitorreview.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lgmonitorreview.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lgmonitorreview.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lgmonitorreview.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 75: sscw.ee
echo "Resolving [75/100]: sscw.ee"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sscw.ee 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sscw.ee|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sscw.ee|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 76: nucre.com
echo "Resolving [76/100]: nucre.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 nucre.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|nucre.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|nucre.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 77: cornesoft.com
echo "Resolving [77/100]: cornesoft.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cornesoft.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cornesoft.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cornesoft.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 78: mattselznick.com
echo "Resolving [78/100]: mattselznick.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mattselznick.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mattselznick.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mattselznick.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 79: horn-elektronik.com
echo "Resolving [79/100]: horn-elektronik.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 horn-elektronik.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|horn-elektronik.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|horn-elektronik.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 80: rousing.dk
echo "Resolving [80/100]: rousing.dk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rousing.dk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rousing.dk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rousing.dk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 81: i12.de
echo "Resolving [81/100]: i12.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 i12.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|i12.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|i12.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 82: casco.com
echo "Resolving [82/100]: casco.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 casco.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|casco.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|casco.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 83: ambassadorsspfhf.org
echo "Resolving [83/100]: ambassadorsspfhf.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ambassadorsspfhf.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ambassadorsspfhf.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ambassadorsspfhf.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 84: capella.edu
echo "Resolving [84/100]: capella.edu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 capella.edu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|capella.edu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|capella.edu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 85: nipslab.org
echo "Resolving [85/100]: nipslab.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 nipslab.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|nipslab.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|nipslab.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 86: webxtrap.com
echo "Resolving [86/100]: webxtrap.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 webxtrap.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|webxtrap.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|webxtrap.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 87: stopallthathating.com
echo "Resolving [87/100]: stopallthathating.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 stopallthathating.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|stopallthathating.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|stopallthathating.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 88: ovtoc.com
echo "Resolving [88/100]: ovtoc.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ovtoc.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ovtoc.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ovtoc.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 89: vaco.ru
echo "Resolving [89/100]: vaco.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 vaco.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|vaco.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|vaco.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 90: ku.edu
echo "Resolving [90/100]: ku.edu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ku.edu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ku.edu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ku.edu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 91: amedeos.net
echo "Resolving [91/100]: amedeos.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 amedeos.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|amedeos.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|amedeos.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 92: thankfullyyours.com
echo "Resolving [92/100]: thankfullyyours.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 thankfullyyours.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|thankfullyyours.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|thankfullyyours.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 93: elettronix.com
echo "Resolving [93/100]: elettronix.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 elettronix.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|elettronix.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|elettronix.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 94: meintrendyhandy.de
echo "Resolving [94/100]: meintrendyhandy.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 meintrendyhandy.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|meintrendyhandy.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|meintrendyhandy.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 95: a-loud.com
echo "Resolving [95/100]: a-loud.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 a-loud.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|a-loud.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|a-loud.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 96: hznzcn.com
echo "Resolving [96/100]: hznzcn.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hznzcn.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hznzcn.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hznzcn.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 97: zilch.org
echo "Resolving [97/100]: zilch.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 zilch.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|zilch.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|zilch.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 98: metabans.com
echo "Resolving [98/100]: metabans.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 metabans.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|metabans.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|metabans.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 99: tretsomshop.nl
echo "Resolving [99/100]: tretsomshop.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tretsomshop.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tretsomshop.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tretsomshop.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 100: gba4iosapp.com
echo "Resolving [100/100]: gba4iosapp.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gba4iosapp.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gba4iosapp.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gba4iosapp.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

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
echo '{' > $OUTPUT_FILE
echo '  "host": "h2",' >> $OUTPUT_FILE
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
        echo '    {"url": "'$url'", "success": true, "latency_ms": '$latency', "ip_address": "'$ip'"}' >> $OUTPUT_FILE
    else
        echo '    {"url": "'$url'", "success": false, "latency_ms": '$latency', "ip_address": null}' >> $OUTPUT_FILE
    fi
done < $RESULTS_FILE

echo '  ]' >> $OUTPUT_FILE
echo '}' >> $OUTPUT_FILE

# Print summary
echo ""
echo "=========================================="
echo "Summary for h2"
echo "=========================================="
echo "Total URLs: $total_urls"
echo "Successful Resolutions: $successful"
echo "Failed Resolutions: $failed"
echo "Average Latency: $avg_latency ms"
echo "Average Throughput: $avg_throughput bytes/sec"
echo "Results saved to: $OUTPUT_FILE"
echo "=========================================="
echo ""
