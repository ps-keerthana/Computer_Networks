#!/bin/bash
# DNS Resolution Script for h1

OUTPUT_FILE="/tmp/h1_results.json"
RESULTS_FILE="/tmp/h1_raw_results.txt"

# Initialize counters
total_urls=100
successful=0
failed=0
total_latency=0

# Clear output files
> $OUTPUT_FILE
> $RESULTS_FILE

echo "Starting DNS resolution for h1..."
echo "Total URLs to resolve: $total_urls"
echo ""


# Resolve URL 1: tuhafhaberler.com
echo "Resolving [1/100]: tuhafhaberler.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tuhafhaberler.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tuhafhaberler.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tuhafhaberler.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 2: rtsab.com
echo "Resolving [2/100]: rtsab.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rtsab.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rtsab.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rtsab.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 3: i-butterfly.ru
echo "Resolving [3/100]: i-butterfly.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 i-butterfly.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|i-butterfly.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|i-butterfly.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 4: datepanchang.com
echo "Resolving [4/100]: datepanchang.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 datepanchang.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|datepanchang.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|datepanchang.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 5: localhost.re
echo "Resolving [5/100]: localhost.re"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 localhost.re 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|localhost.re|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|localhost.re|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 6: daehepharma.com
echo "Resolving [6/100]: daehepharma.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 daehepharma.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|daehepharma.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|daehepharma.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 7: ex-jw.org
echo "Resolving [7/100]: ex-jw.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ex-jw.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ex-jw.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ex-jw.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 8: us.tf
echo "Resolving [8/100]: us.tf"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 us.tf 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|us.tf|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|us.tf|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 9: informarexresistere.fr
echo "Resolving [9/100]: informarexresistere.fr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 informarexresistere.fr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|informarexresistere.fr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|informarexresistere.fr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 10: running-sigi.de
echo "Resolving [10/100]: running-sigi.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 running-sigi.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|running-sigi.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|running-sigi.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 11: buynowfromusa.com
echo "Resolving [11/100]: buynowfromusa.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 buynowfromusa.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|buynowfromusa.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|buynowfromusa.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 12: pbprofile.com
echo "Resolving [12/100]: pbprofile.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pbprofile.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pbprofile.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pbprofile.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 13: fini.net
echo "Resolving [13/100]: fini.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 fini.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|fini.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|fini.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 14: globalpoliticalspectrum.com
echo "Resolving [14/100]: globalpoliticalspectrum.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 globalpoliticalspectrum.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|globalpoliticalspectrum.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|globalpoliticalspectrum.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 15: 41latitude.com
echo "Resolving [15/100]: 41latitude.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 41latitude.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|41latitude.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|41latitude.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 16: zzxu.cn
echo "Resolving [16/100]: zzxu.cn"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 zzxu.cn 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|zzxu.cn|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|zzxu.cn|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 17: energybulbs.co.uk
echo "Resolving [17/100]: energybulbs.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 energybulbs.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|energybulbs.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|energybulbs.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 18: o-ov.com
echo "Resolving [18/100]: o-ov.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 o-ov.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|o-ov.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|o-ov.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 19: lozo.com
echo "Resolving [19/100]: lozo.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 lozo.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|lozo.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|lozo.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 20: tottenhamhk.com
echo "Resolving [20/100]: tottenhamhk.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tottenhamhk.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tottenhamhk.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tottenhamhk.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 21: newstetic.com
echo "Resolving [21/100]: newstetic.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 newstetic.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|newstetic.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|newstetic.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 22: triggerfish.se
echo "Resolving [22/100]: triggerfish.se"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 triggerfish.se 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|triggerfish.se|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|triggerfish.se|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 23: reprosystems.ru
echo "Resolving [23/100]: reprosystems.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 reprosystems.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|reprosystems.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|reprosystems.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 24: interfloracentral.co.uk
echo "Resolving [24/100]: interfloracentral.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 interfloracentral.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|interfloracentral.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|interfloracentral.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 25: afairjudgement.com
echo "Resolving [25/100]: afairjudgement.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 afairjudgement.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|afairjudgement.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|afairjudgement.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 26: owlcreek.com
echo "Resolving [26/100]: owlcreek.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 owlcreek.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|owlcreek.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|owlcreek.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 27: radioterminal.ru
echo "Resolving [27/100]: radioterminal.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 radioterminal.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|radioterminal.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|radioterminal.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 28: junio.com
echo "Resolving [28/100]: junio.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 junio.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|junio.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|junio.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 29: ditrblog.com
echo "Resolving [29/100]: ditrblog.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ditrblog.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ditrblog.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ditrblog.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 30: alchemedialtd.com
echo "Resolving [30/100]: alchemedialtd.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 alchemedialtd.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|alchemedialtd.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|alchemedialtd.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 31: portclydegeneralstore.com
echo "Resolving [31/100]: portclydegeneralstore.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 portclydegeneralstore.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|portclydegeneralstore.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|portclydegeneralstore.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 32: alenpuaca.com
echo "Resolving [32/100]: alenpuaca.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 alenpuaca.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|alenpuaca.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|alenpuaca.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 33: dj-producer-j-mbargo.com
echo "Resolving [33/100]: dj-producer-j-mbargo.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 dj-producer-j-mbargo.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|dj-producer-j-mbargo.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|dj-producer-j-mbargo.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 34: iag-inc.com
echo "Resolving [34/100]: iag-inc.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 iag-inc.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|iag-inc.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|iag-inc.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 35: advertos.ru
echo "Resolving [35/100]: advertos.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 advertos.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|advertos.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|advertos.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 36: kh.ua
echo "Resolving [36/100]: kh.ua"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 kh.ua 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|kh.ua|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|kh.ua|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 37: kennethehartman.com
echo "Resolving [37/100]: kennethehartman.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 kennethehartman.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|kennethehartman.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|kennethehartman.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 38: hemcolubricants.com
echo "Resolving [38/100]: hemcolubricants.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hemcolubricants.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hemcolubricants.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hemcolubricants.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 39: forpsi.net
echo "Resolving [39/100]: forpsi.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 forpsi.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|forpsi.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|forpsi.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 40: memeblender.com
echo "Resolving [40/100]: memeblender.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 memeblender.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|memeblender.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|memeblender.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 41: somode.com
echo "Resolving [41/100]: somode.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 somode.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|somode.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|somode.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 42: gamemob.com
echo "Resolving [42/100]: gamemob.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gamemob.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gamemob.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gamemob.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 43: monsterhomesecuritystore.com
echo "Resolving [43/100]: monsterhomesecuritystore.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 monsterhomesecuritystore.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|monsterhomesecuritystore.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|monsterhomesecuritystore.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 44: door2games.com
echo "Resolving [44/100]: door2games.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 door2games.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|door2games.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|door2games.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 45: ondemandappliancerepair.com
echo "Resolving [45/100]: ondemandappliancerepair.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ondemandappliancerepair.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ondemandappliancerepair.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ondemandappliancerepair.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 46: gensee.com
echo "Resolving [46/100]: gensee.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gensee.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gensee.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gensee.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 47: caricsports.com
echo "Resolving [47/100]: caricsports.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 caricsports.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|caricsports.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|caricsports.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 48: auqzzx.com
echo "Resolving [48/100]: auqzzx.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 auqzzx.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|auqzzx.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|auqzzx.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 49: toaskfuture.com
echo "Resolving [49/100]: toaskfuture.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 toaskfuture.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|toaskfuture.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|toaskfuture.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 50: cetsi.fr
echo "Resolving [50/100]: cetsi.fr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cetsi.fr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cetsi.fr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cetsi.fr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 51: probigbets.com
echo "Resolving [51/100]: probigbets.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 probigbets.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|probigbets.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|probigbets.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 52: bikesandtransit.com
echo "Resolving [52/100]: bikesandtransit.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bikesandtransit.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bikesandtransit.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bikesandtransit.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 53: aqvr.com
echo "Resolving [53/100]: aqvr.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 aqvr.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|aqvr.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|aqvr.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 54: niceinternetmoney.ru
echo "Resolving [54/100]: niceinternetmoney.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 niceinternetmoney.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|niceinternetmoney.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|niceinternetmoney.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 55: chonvn.com
echo "Resolving [55/100]: chonvn.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 chonvn.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|chonvn.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|chonvn.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 56: eugenbotnar.com
echo "Resolving [56/100]: eugenbotnar.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 eugenbotnar.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|eugenbotnar.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|eugenbotnar.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 57: phi-pe.com
echo "Resolving [57/100]: phi-pe.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 phi-pe.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|phi-pe.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|phi-pe.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 58: chuamatsua.com
echo "Resolving [58/100]: chuamatsua.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 chuamatsua.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|chuamatsua.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|chuamatsua.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 59: pictures-thailand.com
echo "Resolving [59/100]: pictures-thailand.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pictures-thailand.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pictures-thailand.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pictures-thailand.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 60: 2brightsparks.co.uk
echo "Resolving [60/100]: 2brightsparks.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 2brightsparks.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|2brightsparks.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|2brightsparks.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 61: astrumonline.ru
echo "Resolving [61/100]: astrumonline.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 astrumonline.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|astrumonline.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|astrumonline.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 62: blueridgelife.com
echo "Resolving [62/100]: blueridgelife.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 blueridgelife.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|blueridgelife.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|blueridgelife.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 63: mwzip.com
echo "Resolving [63/100]: mwzip.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mwzip.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mwzip.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mwzip.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 64: gusbi.com
echo "Resolving [64/100]: gusbi.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gusbi.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gusbi.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gusbi.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 65: simternet.com
echo "Resolving [65/100]: simternet.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 simternet.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|simternet.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|simternet.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 66: khsm.ru
echo "Resolving [66/100]: khsm.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 khsm.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|khsm.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|khsm.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 67: livelinks.com
echo "Resolving [67/100]: livelinks.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 livelinks.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|livelinks.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|livelinks.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 68: jantv.in
echo "Resolving [68/100]: jantv.in"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 jantv.in 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|jantv.in|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|jantv.in|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 69: hornil.com
echo "Resolving [69/100]: hornil.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hornil.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hornil.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hornil.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 70: 7dfps.com
echo "Resolving [70/100]: 7dfps.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 7dfps.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|7dfps.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|7dfps.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 71: luckypuppygames.com
echo "Resolving [71/100]: luckypuppygames.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 luckypuppygames.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|luckypuppygames.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|luckypuppygames.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 72: b-matrix.com
echo "Resolving [72/100]: b-matrix.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 b-matrix.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|b-matrix.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|b-matrix.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 73: coutureauchocolat.com
echo "Resolving [73/100]: coutureauchocolat.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 coutureauchocolat.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|coutureauchocolat.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|coutureauchocolat.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 74: afresnohomeinspector.com
echo "Resolving [74/100]: afresnohomeinspector.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 afresnohomeinspector.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|afresnohomeinspector.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|afresnohomeinspector.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 75: pieceinch.com
echo "Resolving [75/100]: pieceinch.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pieceinch.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pieceinch.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pieceinch.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 76: australiatradenow.com
echo "Resolving [76/100]: australiatradenow.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 australiatradenow.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|australiatradenow.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|australiatradenow.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 77: diamondknot.com
echo "Resolving [77/100]: diamondknot.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 diamondknot.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|diamondknot.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|diamondknot.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 78: amorefieldlife.com
echo "Resolving [78/100]: amorefieldlife.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 amorefieldlife.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|amorefieldlife.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|amorefieldlife.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 79: sheltercoveinn.com
echo "Resolving [79/100]: sheltercoveinn.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sheltercoveinn.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sheltercoveinn.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sheltercoveinn.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 80: wrestlingfanssuck.com
echo "Resolving [80/100]: wrestlingfanssuck.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 wrestlingfanssuck.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|wrestlingfanssuck.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|wrestlingfanssuck.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 81: sdccdonline.net
echo "Resolving [81/100]: sdccdonline.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sdccdonline.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sdccdonline.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sdccdonline.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 82: autofirenze.biz
echo "Resolving [82/100]: autofirenze.biz"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 autofirenze.biz 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|autofirenze.biz|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|autofirenze.biz|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 83: house-sg.com
echo "Resolving [83/100]: house-sg.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 house-sg.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|house-sg.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|house-sg.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 84: camcard.com
echo "Resolving [84/100]: camcard.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 camcard.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|camcard.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|camcard.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 85: ppsuika.ac.id
echo "Resolving [85/100]: ppsuika.ac.id"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ppsuika.ac.id 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ppsuika.ac.id|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ppsuika.ac.id|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 86: healthnews4you.com
echo "Resolving [86/100]: healthnews4you.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 healthnews4you.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|healthnews4you.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|healthnews4you.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 87: stunninggirls.net
echo "Resolving [87/100]: stunninggirls.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 stunninggirls.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|stunninggirls.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|stunninggirls.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 88: kathihill.com
echo "Resolving [88/100]: kathihill.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 kathihill.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|kathihill.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|kathihill.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 89: linksplash.info
echo "Resolving [89/100]: linksplash.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 linksplash.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|linksplash.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|linksplash.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 90: group14eng.com
echo "Resolving [90/100]: group14eng.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 group14eng.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|group14eng.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|group14eng.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 91: shqqaa.com
echo "Resolving [91/100]: shqqaa.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 shqqaa.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|shqqaa.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|shqqaa.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 92: mesites.co.za
echo "Resolving [92/100]: mesites.co.za"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mesites.co.za 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mesites.co.za|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mesites.co.za|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 93: progettogiovani.pd.it
echo "Resolving [93/100]: progettogiovani.pd.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 progettogiovani.pd.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|progettogiovani.pd.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|progettogiovani.pd.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 94: uahoy.net
echo "Resolving [94/100]: uahoy.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 uahoy.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|uahoy.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|uahoy.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 95: retiragroup.com
echo "Resolving [95/100]: retiragroup.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 retiragroup.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|retiragroup.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|retiragroup.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 96: effexdjs.com
echo "Resolving [96/100]: effexdjs.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 effexdjs.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|effexdjs.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|effexdjs.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 97: mysearch-online.com
echo "Resolving [97/100]: mysearch-online.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mysearch-online.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mysearch-online.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mysearch-online.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 98: asadventure.com
echo "Resolving [98/100]: asadventure.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 asadventure.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|asadventure.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|asadventure.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 99: michiganbulb.com
echo "Resolving [99/100]: michiganbulb.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 michiganbulb.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|michiganbulb.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|michiganbulb.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 100: shivalikprints.com
echo "Resolving [100/100]: shivalikprints.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 shivalikprints.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|shivalikprints.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|shivalikprints.com|$latency|none" >> $RESULTS_FILE
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
echo '  "host": "h1",' >> $OUTPUT_FILE
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
echo "Summary for h1"
echo "=========================================="
echo "Total URLs: $total_urls"
echo "Successful Resolutions: $successful"
echo "Failed Resolutions: $failed"
echo "Average Latency: $avg_latency ms"
echo "Average Throughput: $avg_throughput bytes/sec"
echo "Results saved to: $OUTPUT_FILE"
echo "=========================================="
echo ""
