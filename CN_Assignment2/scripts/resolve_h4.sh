#!/bin/bash
# DNS Resolution Script for h4

OUTPUT_FILE="/tmp/h4_results.json"
RESULTS_FILE="/tmp/h4_raw_results.txt"

# Initialize counters
total_urls=100
successful=0
failed=0
total_latency=0

# Clear output files
> $OUTPUT_FILE
> $RESULTS_FILE

echo "Starting DNS resolution for h4..."
echo "Total URLs to resolve: $total_urls"
echo ""


# Resolve URL 1: gustissimo.it
echo "Resolving [1/100]: gustissimo.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gustissimo.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gustissimo.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gustissimo.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 2: auto-klad.ru
echo "Resolving [2/100]: auto-klad.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 auto-klad.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|auto-klad.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|auto-klad.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 3: iointegrators.com
echo "Resolving [3/100]: iointegrators.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 iointegrators.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|iointegrators.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|iointegrators.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 4: daytimeghosthunter.com
echo "Resolving [4/100]: daytimeghosthunter.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 daytimeghosthunter.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|daytimeghosthunter.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|daytimeghosthunter.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 5: sapendolo.it
echo "Resolving [5/100]: sapendolo.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sapendolo.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sapendolo.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sapendolo.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 6: saharaimport.com
echo "Resolving [6/100]: saharaimport.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 saharaimport.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|saharaimport.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|saharaimport.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 7: ngoanhien.com
echo "Resolving [7/100]: ngoanhien.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ngoanhien.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ngoanhien.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ngoanhien.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 8: itgeorgia.co
echo "Resolving [8/100]: itgeorgia.co"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 itgeorgia.co 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|itgeorgia.co|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|itgeorgia.co|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 9: myfantasticpark.es
echo "Resolving [9/100]: myfantasticpark.es"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 myfantasticpark.es 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|myfantasticpark.es|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|myfantasticpark.es|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 10: vinayaprabha.com
echo "Resolving [10/100]: vinayaprabha.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 vinayaprabha.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|vinayaprabha.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|vinayaprabha.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 11: sitiweb.us
echo "Resolving [11/100]: sitiweb.us"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sitiweb.us 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sitiweb.us|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sitiweb.us|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 12: contentremarketing.com
echo "Resolving [12/100]: contentremarketing.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 contentremarketing.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|contentremarketing.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|contentremarketing.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 13: videofun.me
echo "Resolving [13/100]: videofun.me"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 videofun.me 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|videofun.me|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|videofun.me|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 14: breezelaw.com
echo "Resolving [14/100]: breezelaw.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 breezelaw.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|breezelaw.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|breezelaw.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 15: ranocchi.it
echo "Resolving [15/100]: ranocchi.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ranocchi.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ranocchi.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ranocchi.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 16: 22hotmail.com
echo "Resolving [16/100]: 22hotmail.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 22hotmail.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|22hotmail.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|22hotmail.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 17: ana-sofia.pt
echo "Resolving [17/100]: ana-sofia.pt"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ana-sofia.pt 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ana-sofia.pt|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ana-sofia.pt|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 18: abhair.com
echo "Resolving [18/100]: abhair.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 abhair.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|abhair.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|abhair.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 19: tripladoppia.com
echo "Resolving [19/100]: tripladoppia.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tripladoppia.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tripladoppia.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tripladoppia.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 20: gardeninginflorida.com
echo "Resolving [20/100]: gardeninginflorida.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gardeninginflorida.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gardeninginflorida.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gardeninginflorida.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 21: thepropertyvault.co.uk
echo "Resolving [21/100]: thepropertyvault.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 thepropertyvault.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|thepropertyvault.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|thepropertyvault.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 22: viahttps.com
echo "Resolving [22/100]: viahttps.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 viahttps.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|viahttps.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|viahttps.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 23: adverman.com
echo "Resolving [23/100]: adverman.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 adverman.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|adverman.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|adverman.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 24: majorleaguelacrosse.com
echo "Resolving [24/100]: majorleaguelacrosse.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 majorleaguelacrosse.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|majorleaguelacrosse.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|majorleaguelacrosse.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 25: rubenquinones.com
echo "Resolving [25/100]: rubenquinones.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rubenquinones.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rubenquinones.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rubenquinones.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 26: kanoon-ansar.org
echo "Resolving [26/100]: kanoon-ansar.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 kanoon-ansar.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|kanoon-ansar.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|kanoon-ansar.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 27: arrabonet.hu
echo "Resolving [27/100]: arrabonet.hu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 arrabonet.hu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|arrabonet.hu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|arrabonet.hu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 28: wordai.com
echo "Resolving [28/100]: wordai.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 wordai.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|wordai.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|wordai.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 29: muhammedmusa.com
echo "Resolving [29/100]: muhammedmusa.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 muhammedmusa.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|muhammedmusa.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|muhammedmusa.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 30: freepornvideosx.com
echo "Resolving [30/100]: freepornvideosx.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 freepornvideosx.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|freepornvideosx.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|freepornvideosx.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 31: 120shenbing.com
echo "Resolving [31/100]: 120shenbing.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 120shenbing.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|120shenbing.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|120shenbing.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 32: onetoshop.nl
echo "Resolving [32/100]: onetoshop.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 onetoshop.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|onetoshop.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|onetoshop.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 33: meditekyazilim.net
echo "Resolving [33/100]: meditekyazilim.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 meditekyazilim.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|meditekyazilim.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|meditekyazilim.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 34: theexoticpersian.com
echo "Resolving [34/100]: theexoticpersian.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 theexoticpersian.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|theexoticpersian.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|theexoticpersian.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 35: boh10suphanburi.com
echo "Resolving [35/100]: boh10suphanburi.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 boh10suphanburi.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|boh10suphanburi.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|boh10suphanburi.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 36: overseasmedical.com
echo "Resolving [36/100]: overseasmedical.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 overseasmedical.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|overseasmedical.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|overseasmedical.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 37: grandcanyongrandhotel.com
echo "Resolving [37/100]: grandcanyongrandhotel.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 grandcanyongrandhotel.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|grandcanyongrandhotel.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|grandcanyongrandhotel.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 38: boneshoppe.com
echo "Resolving [38/100]: boneshoppe.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 boneshoppe.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|boneshoppe.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|boneshoppe.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 39: sweathelp.org
echo "Resolving [39/100]: sweathelp.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sweathelp.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sweathelp.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sweathelp.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 40: c0.pl
echo "Resolving [40/100]: c0.pl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 c0.pl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|c0.pl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|c0.pl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 41: sipflash.com
echo "Resolving [41/100]: sipflash.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sipflash.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sipflash.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sipflash.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 42: koopsmodellbau.de
echo "Resolving [42/100]: koopsmodellbau.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 koopsmodellbau.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|koopsmodellbau.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|koopsmodellbau.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 43: lespetiteschoses.com
echo "Resolving [43/100]: lespetiteschoses.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lespetiteschoses.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lespetiteschoses.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lespetiteschoses.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 44: b2b2c.ca
echo "Resolving [44/100]: b2b2c.ca"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 b2b2c.ca 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|b2b2c.ca|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|b2b2c.ca|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 45: pilsnerurquell.com
echo "Resolving [45/100]: pilsnerurquell.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pilsnerurquell.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pilsnerurquell.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pilsnerurquell.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 46: medintime.ru
echo "Resolving [46/100]: medintime.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 medintime.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|medintime.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|medintime.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 47: njafe.org
echo "Resolving [47/100]: njafe.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 njafe.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|njafe.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|njafe.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 48: djbarryblends.com
echo "Resolving [48/100]: djbarryblends.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 djbarryblends.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|djbarryblends.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|djbarryblends.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 49: deine-bahn.de
echo "Resolving [49/100]: deine-bahn.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 deine-bahn.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|deine-bahn.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|deine-bahn.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 50: hackthissite.org
echo "Resolving [50/100]: hackthissite.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hackthissite.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hackthissite.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hackthissite.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 51: ereadz.com
echo "Resolving [51/100]: ereadz.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ereadz.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ereadz.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ereadz.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 52: gurukulonline.com
echo "Resolving [52/100]: gurukulonline.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gurukulonline.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gurukulonline.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gurukulonline.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 53: sf-notifications.com
echo "Resolving [53/100]: sf-notifications.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sf-notifications.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sf-notifications.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sf-notifications.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 54: capequilog.com
echo "Resolving [54/100]: capequilog.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 capequilog.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|capequilog.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|capequilog.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 55: greens.my
echo "Resolving [55/100]: greens.my"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 greens.my 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|greens.my|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|greens.my|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 56: 2xfzy.com
echo "Resolving [56/100]: 2xfzy.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 2xfzy.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|2xfzy.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|2xfzy.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 57: magic-illusion.ru
echo "Resolving [57/100]: magic-illusion.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 magic-illusion.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|magic-illusion.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|magic-illusion.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 58: irflashgame.com
echo "Resolving [58/100]: irflashgame.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 irflashgame.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|irflashgame.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|irflashgame.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 59: solcredito.es
echo "Resolving [59/100]: solcredito.es"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 solcredito.es 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|solcredito.es|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|solcredito.es|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 60: go2jump.com
echo "Resolving [60/100]: go2jump.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 go2jump.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|go2jump.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|go2jump.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 61: millionfareast.com
echo "Resolving [61/100]: millionfareast.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 millionfareast.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|millionfareast.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|millionfareast.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 62: msf.be
echo "Resolving [62/100]: msf.be"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 msf.be 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|msf.be|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|msf.be|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 63: cellslider.net
echo "Resolving [63/100]: cellslider.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cellslider.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cellslider.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cellslider.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 64: bhhsneproperties.com
echo "Resolving [64/100]: bhhsneproperties.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bhhsneproperties.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bhhsneproperties.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bhhsneproperties.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 65: skplus.kr
echo "Resolving [65/100]: skplus.kr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 skplus.kr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|skplus.kr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|skplus.kr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 66: empclan.com
echo "Resolving [66/100]: empclan.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 empclan.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|empclan.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|empclan.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 67: carolgraykennedy.com
echo "Resolving [67/100]: carolgraykennedy.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 carolgraykennedy.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|carolgraykennedy.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|carolgraykennedy.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 68: kiyimuzik.com
echo "Resolving [68/100]: kiyimuzik.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 kiyimuzik.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|kiyimuzik.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|kiyimuzik.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 69: yunpda.com
echo "Resolving [69/100]: yunpda.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 yunpda.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|yunpda.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|yunpda.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 70: valdo.com
echo "Resolving [70/100]: valdo.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 valdo.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|valdo.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|valdo.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 71: supportpabiomass.org
echo "Resolving [71/100]: supportpabiomass.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 supportpabiomass.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|supportpabiomass.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|supportpabiomass.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 72: roche-applied-science.com
echo "Resolving [72/100]: roche-applied-science.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 roche-applied-science.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|roche-applied-science.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|roche-applied-science.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 73: oneworldinfo.com
echo "Resolving [73/100]: oneworldinfo.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 oneworldinfo.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|oneworldinfo.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|oneworldinfo.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 74: 7apcrshrmanila.org
echo "Resolving [74/100]: 7apcrshrmanila.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 7apcrshrmanila.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|7apcrshrmanila.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|7apcrshrmanila.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 75: ilikecrochet.com
echo "Resolving [75/100]: ilikecrochet.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ilikecrochet.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ilikecrochet.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ilikecrochet.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 76: closerdiets.com
echo "Resolving [76/100]: closerdiets.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 closerdiets.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|closerdiets.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|closerdiets.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 77: myface.com
echo "Resolving [77/100]: myface.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 myface.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|myface.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|myface.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 78: megi.cz
echo "Resolving [78/100]: megi.cz"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 megi.cz 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|megi.cz|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|megi.cz|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 79: pces.in
echo "Resolving [79/100]: pces.in"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pces.in 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pces.in|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pces.in|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 80: originalmagicart.com
echo "Resolving [80/100]: originalmagicart.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 originalmagicart.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|originalmagicart.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|originalmagicart.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 81: godo.co.kr
echo "Resolving [81/100]: godo.co.kr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 godo.co.kr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|godo.co.kr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|godo.co.kr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 82: ugotrelis.com
echo "Resolving [82/100]: ugotrelis.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ugotrelis.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ugotrelis.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ugotrelis.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 83: alb-automobiles.com
echo "Resolving [83/100]: alb-automobiles.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 alb-automobiles.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|alb-automobiles.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|alb-automobiles.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 84: ok-magazine.ru
echo "Resolving [84/100]: ok-magazine.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ok-magazine.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ok-magazine.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ok-magazine.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 85: wiltpr.com
echo "Resolving [85/100]: wiltpr.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 wiltpr.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|wiltpr.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|wiltpr.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 86: dmg-dental.com
echo "Resolving [86/100]: dmg-dental.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 dmg-dental.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|dmg-dental.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|dmg-dental.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 87: silkroadtours.com
echo "Resolving [87/100]: silkroadtours.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 silkroadtours.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|silkroadtours.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|silkroadtours.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 88: rositehost.com
echo "Resolving [88/100]: rositehost.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rositehost.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rositehost.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rositehost.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 89: livescan4all.com
echo "Resolving [89/100]: livescan4all.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 livescan4all.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|livescan4all.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|livescan4all.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 90: oberandsons.com
echo "Resolving [90/100]: oberandsons.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 oberandsons.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|oberandsons.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|oberandsons.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 91: celerity.com
echo "Resolving [91/100]: celerity.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 celerity.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|celerity.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|celerity.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 92: miscellaneousheathen.com
echo "Resolving [92/100]: miscellaneousheathen.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 miscellaneousheathen.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|miscellaneousheathen.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|miscellaneousheathen.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 93: rolflouisville.com
echo "Resolving [93/100]: rolflouisville.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rolflouisville.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rolflouisville.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rolflouisville.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 94: jacquelinemertz.ch
echo "Resolving [94/100]: jacquelinemertz.ch"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 jacquelinemertz.ch 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|jacquelinemertz.ch|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|jacquelinemertz.ch|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 95: gaplex.biz
echo "Resolving [95/100]: gaplex.biz"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gaplex.biz 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gaplex.biz|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gaplex.biz|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 96: frasesdemotivacao.net
echo "Resolving [96/100]: frasesdemotivacao.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 frasesdemotivacao.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|frasesdemotivacao.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|frasesdemotivacao.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 97: divefishhouse.com
echo "Resolving [97/100]: divefishhouse.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 divefishhouse.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|divefishhouse.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|divefishhouse.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 98: stark.dk
echo "Resolving [98/100]: stark.dk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 stark.dk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|stark.dk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|stark.dk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 99: xxx-muschis.de
echo "Resolving [99/100]: xxx-muschis.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 xxx-muschis.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|xxx-muschis.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|xxx-muschis.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 100: florenseusa.com
echo "Resolving [100/100]: florenseusa.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 florenseusa.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|florenseusa.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|florenseusa.com|$latency|none" >> $RESULTS_FILE
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
echo '  "host": "h4",' >> $OUTPUT_FILE
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
echo "Summary for h4"
echo "=========================================="
echo "Total URLs: $total_urls"
echo "Successful Resolutions: $successful"
echo "Failed Resolutions: $failed"
echo "Average Latency: $avg_latency ms"
echo "Average Throughput: $avg_throughput bytes/sec"
echo "Results saved to: $OUTPUT_FILE"
echo "=========================================="
echo ""
