#!/bin/bash
# DNS Resolution Script for h3

OUTPUT_FILE="/tmp/h3_results.json"
RESULTS_FILE="/tmp/h3_raw_results.txt"

# Initialize counters
total_urls=100
successful=0
failed=0
total_latency=0

# Clear output files
> $OUTPUT_FILE
> $RESULTS_FILE

echo "Starting DNS resolution for h3..."
echo "Total URLs to resolve: $total_urls"
echo ""


# Resolve URL 1: tenant-internet.com
echo "Resolving [1/100]: tenant-internet.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tenant-internet.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tenant-internet.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tenant-internet.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 2: gadanguides.com
echo "Resolving [2/100]: gadanguides.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gadanguides.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gadanguides.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gadanguides.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 3: charityjob.co.uk
echo "Resolving [3/100]: charityjob.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 charityjob.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|charityjob.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|charityjob.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 4: sarahpartridge.net
echo "Resolving [4/100]: sarahpartridge.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sarahpartridge.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sarahpartridge.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sarahpartridge.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 5: ecolems.com
echo "Resolving [5/100]: ecolems.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ecolems.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ecolems.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ecolems.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 6: marilynlingerie.com
echo "Resolving [6/100]: marilynlingerie.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 marilynlingerie.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|marilynlingerie.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|marilynlingerie.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 7: anvilnetworksolutions.net
echo "Resolving [7/100]: anvilnetworksolutions.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 anvilnetworksolutions.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|anvilnetworksolutions.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|anvilnetworksolutions.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 8: cdmail.fr
echo "Resolving [8/100]: cdmail.fr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cdmail.fr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cdmail.fr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cdmail.fr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 9: freeditorial.com
echo "Resolving [9/100]: freeditorial.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 freeditorial.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|freeditorial.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|freeditorial.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 10: ciber.com
echo "Resolving [10/100]: ciber.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ciber.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ciber.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ciber.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 11: get-webby.com
echo "Resolving [11/100]: get-webby.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 get-webby.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|get-webby.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|get-webby.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 12: gadgetgearpro.com
echo "Resolving [12/100]: gadgetgearpro.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gadgetgearpro.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gadgetgearpro.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gadgetgearpro.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 13: sonoma-marinfair.org
echo "Resolving [13/100]: sonoma-marinfair.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sonoma-marinfair.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sonoma-marinfair.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sonoma-marinfair.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 14: ishidatic.com
echo "Resolving [14/100]: ishidatic.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ishidatic.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ishidatic.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ishidatic.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 15: minecraftserverdeals.com
echo "Resolving [15/100]: minecraftserverdeals.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 minecraftserverdeals.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|minecraftserverdeals.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|minecraftserverdeals.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 16: romney.com
echo "Resolving [16/100]: romney.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 romney.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|romney.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|romney.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 17: bookingnest.com
echo "Resolving [17/100]: bookingnest.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bookingnest.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bookingnest.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bookingnest.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 18: metar.gr
echo "Resolving [18/100]: metar.gr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 metar.gr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|metar.gr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|metar.gr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 19: bigliettieventi.info
echo "Resolving [19/100]: bigliettieventi.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bigliettieventi.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bigliettieventi.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bigliettieventi.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 20: asseenontvlaunchpad.com
echo "Resolving [20/100]: asseenontvlaunchpad.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 asseenontvlaunchpad.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|asseenontvlaunchpad.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|asseenontvlaunchpad.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 21: ftf.com
echo "Resolving [21/100]: ftf.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ftf.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ftf.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ftf.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 22: polymth.com
echo "Resolving [22/100]: polymth.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 polymth.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|polymth.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|polymth.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 23: crsgfk.de
echo "Resolving [23/100]: crsgfk.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 crsgfk.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|crsgfk.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|crsgfk.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 24: urbannetwork.co.uk
echo "Resolving [24/100]: urbannetwork.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 urbannetwork.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|urbannetwork.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|urbannetwork.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 25: synrc.com
echo "Resolving [25/100]: synrc.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 synrc.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|synrc.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|synrc.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 26: callcomm.info
echo "Resolving [26/100]: callcomm.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 callcomm.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|callcomm.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|callcomm.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 27: ceskykutil.cz
echo "Resolving [27/100]: ceskykutil.cz"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ceskykutil.cz 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ceskykutil.cz|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ceskykutil.cz|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 28: ximangquantrieu.com
echo "Resolving [28/100]: ximangquantrieu.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ximangquantrieu.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ximangquantrieu.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ximangquantrieu.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 29: shishioh.info
echo "Resolving [29/100]: shishioh.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 shishioh.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|shishioh.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|shishioh.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 30: vpndefender.com
echo "Resolving [30/100]: vpndefender.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 vpndefender.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|vpndefender.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|vpndefender.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 31: hutago.com
echo "Resolving [31/100]: hutago.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hutago.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hutago.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hutago.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 32: tangkas888.com
echo "Resolving [32/100]: tangkas888.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tangkas888.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tangkas888.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tangkas888.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 33: egov.sy
echo "Resolving [33/100]: egov.sy"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 egov.sy 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|egov.sy|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|egov.sy|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 34: abmcare.com
echo "Resolving [34/100]: abmcare.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 abmcare.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|abmcare.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|abmcare.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 35: iael.com
echo "Resolving [35/100]: iael.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 iael.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|iael.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|iael.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 36: sailor.pl
echo "Resolving [36/100]: sailor.pl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sailor.pl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sailor.pl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sailor.pl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 37: skyhightmatter.info
echo "Resolving [37/100]: skyhightmatter.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 skyhightmatter.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|skyhightmatter.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|skyhightmatter.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 38: autopareri.com
echo "Resolving [38/100]: autopareri.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 autopareri.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|autopareri.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|autopareri.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 39: cia.it
echo "Resolving [39/100]: cia.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cia.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cia.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cia.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 40: texasbeyondhistory.net
echo "Resolving [40/100]: texasbeyondhistory.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 texasbeyondhistory.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|texasbeyondhistory.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|texasbeyondhistory.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 41: gardenofwords.com
echo "Resolving [41/100]: gardenofwords.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gardenofwords.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gardenofwords.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gardenofwords.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 42: giuseppelivraghi.it
echo "Resolving [42/100]: giuseppelivraghi.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 giuseppelivraghi.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|giuseppelivraghi.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|giuseppelivraghi.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 43: hdcric.com
echo "Resolving [43/100]: hdcric.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hdcric.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hdcric.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hdcric.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 44: chekiang.info
echo "Resolving [44/100]: chekiang.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 chekiang.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|chekiang.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|chekiang.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 45: archiportale.com
echo "Resolving [45/100]: archiportale.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 archiportale.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|archiportale.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|archiportale.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 46: de.vu
echo "Resolving [46/100]: de.vu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 de.vu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|de.vu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|de.vu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 47: teachmyass.info
echo "Resolving [47/100]: teachmyass.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 teachmyass.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|teachmyass.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|teachmyass.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 48: nasaspaceflight.com
echo "Resolving [48/100]: nasaspaceflight.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 nasaspaceflight.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|nasaspaceflight.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|nasaspaceflight.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 49: consumerreviews24.com
echo "Resolving [49/100]: consumerreviews24.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 consumerreviews24.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|consumerreviews24.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|consumerreviews24.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 50: dilw.ie
echo "Resolving [50/100]: dilw.ie"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 dilw.ie 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|dilw.ie|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|dilw.ie|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 51: bbqinjector.com
echo "Resolving [51/100]: bbqinjector.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bbqinjector.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bbqinjector.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bbqinjector.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 52: gxjbsj.com
echo "Resolving [52/100]: gxjbsj.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gxjbsj.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gxjbsj.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gxjbsj.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 53: fmnara.com
echo "Resolving [53/100]: fmnara.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 fmnara.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|fmnara.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|fmnara.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 54: pet-connect.ru
echo "Resolving [54/100]: pet-connect.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pet-connect.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pet-connect.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pet-connect.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 55: synchchaos.com
echo "Resolving [55/100]: synchchaos.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 synchchaos.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|synchchaos.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|synchchaos.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 56: uca.edu
echo "Resolving [56/100]: uca.edu"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 uca.edu 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|uca.edu|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|uca.edu|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 57: oaister.org
echo "Resolving [57/100]: oaister.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 oaister.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|oaister.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|oaister.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 58: chenghuavideo.asia
echo "Resolving [58/100]: chenghuavideo.asia"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 chenghuavideo.asia 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|chenghuavideo.asia|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|chenghuavideo.asia|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 59: video-peche-poisson.fr
echo "Resolving [59/100]: video-peche-poisson.fr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 video-peche-poisson.fr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|video-peche-poisson.fr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|video-peche-poisson.fr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 60: currencyrates.org
echo "Resolving [60/100]: currencyrates.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 currencyrates.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|currencyrates.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|currencyrates.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 61: zpav.pl
echo "Resolving [61/100]: zpav.pl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 zpav.pl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|zpav.pl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|zpav.pl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 62: tawali.com
echo "Resolving [62/100]: tawali.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 tawali.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|tawali.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|tawali.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 63: dock2office.com
echo "Resolving [63/100]: dock2office.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 dock2office.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|dock2office.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|dock2office.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 64: vlielandoutdoorcenter.nl
echo "Resolving [64/100]: vlielandoutdoorcenter.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 vlielandoutdoorcenter.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|vlielandoutdoorcenter.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|vlielandoutdoorcenter.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 65: gregginn.com
echo "Resolving [65/100]: gregginn.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 gregginn.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|gregginn.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|gregginn.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 66: arcoat.com
echo "Resolving [66/100]: arcoat.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 arcoat.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|arcoat.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|arcoat.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 67: cushinglawoffices.com
echo "Resolving [67/100]: cushinglawoffices.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cushinglawoffices.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cushinglawoffices.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cushinglawoffices.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 68: eggcityradio.com
echo "Resolving [68/100]: eggcityradio.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 eggcityradio.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|eggcityradio.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|eggcityradio.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 69: michaelbyers.org
echo "Resolving [69/100]: michaelbyers.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 michaelbyers.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|michaelbyers.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|michaelbyers.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 70: stkpro.ru
echo "Resolving [70/100]: stkpro.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 stkpro.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|stkpro.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|stkpro.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 71: silveropt.ru
echo "Resolving [71/100]: silveropt.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 silveropt.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|silveropt.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|silveropt.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 72: topbarbee.com
echo "Resolving [72/100]: topbarbee.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 topbarbee.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|topbarbee.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|topbarbee.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 73: teleskill.it
echo "Resolving [73/100]: teleskill.it"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 teleskill.it 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|teleskill.it|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|teleskill.it|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 74: virtualjerusalem.com
echo "Resolving [74/100]: virtualjerusalem.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 virtualjerusalem.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|virtualjerusalem.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|virtualjerusalem.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 75: morban.co.uk
echo "Resolving [75/100]: morban.co.uk"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 morban.co.uk 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|morban.co.uk|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|morban.co.uk|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 76: mechachal.org
echo "Resolving [76/100]: mechachal.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 mechachal.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|mechachal.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|mechachal.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 77: noblewomanhood.com
echo "Resolving [77/100]: noblewomanhood.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 noblewomanhood.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|noblewomanhood.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|noblewomanhood.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 78: cosmeticaestheticsurgery.com
echo "Resolving [78/100]: cosmeticaestheticsurgery.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cosmeticaestheticsurgery.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cosmeticaestheticsurgery.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cosmeticaestheticsurgery.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 79: note-so-easy.co.za
echo "Resolving [79/100]: note-so-easy.co.za"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 note-so-easy.co.za 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|note-so-easy.co.za|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|note-so-easy.co.za|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 80: vietcapitaltour.com
echo "Resolving [80/100]: vietcapitaltour.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 vietcapitaltour.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|vietcapitaltour.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|vietcapitaltour.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 81: ncees.org
echo "Resolving [81/100]: ncees.org"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ncees.org 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ncees.org|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ncees.org|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 82: laigang001.com
echo "Resolving [82/100]: laigang001.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 laigang001.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|laigang001.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|laigang001.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 83: verlockeshop.de
echo "Resolving [83/100]: verlockeshop.de"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 verlockeshop.de 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|verlockeshop.de|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|verlockeshop.de|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 84: clickdownloadfiles.com
echo "Resolving [84/100]: clickdownloadfiles.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 clickdownloadfiles.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|clickdownloadfiles.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|clickdownloadfiles.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 85: e-hps.com
echo "Resolving [85/100]: e-hps.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 e-hps.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|e-hps.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|e-hps.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 86: drglendza.co.rs
echo "Resolving [86/100]: drglendza.co.rs"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 drglendza.co.rs 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|drglendza.co.rs|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|drglendza.co.rs|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 87: ghimpele.ro
echo "Resolving [87/100]: ghimpele.ro"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 ghimpele.ro 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|ghimpele.ro|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|ghimpele.ro|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 88: pahibu.net
echo "Resolving [88/100]: pahibu.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 pahibu.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|pahibu.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|pahibu.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 89: trackcheatingspouse.com
echo "Resolving [89/100]: trackcheatingspouse.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 trackcheatingspouse.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|trackcheatingspouse.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|trackcheatingspouse.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 90: dricom-hosting.nl
echo "Resolving [90/100]: dricom-hosting.nl"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 dricom-hosting.nl 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|dricom-hosting.nl|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|dricom-hosting.nl|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 91: medipacademy.com
echo "Resolving [91/100]: medipacademy.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 medipacademy.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|medipacademy.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|medipacademy.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 92: e-daily.gr
echo "Resolving [92/100]: e-daily.gr"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 e-daily.gr 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|e-daily.gr|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|e-daily.gr|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 93: cuteteenschoolgirlz.com
echo "Resolving [93/100]: cuteteenschoolgirlz.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 cuteteenschoolgirlz.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|cuteteenschoolgirlz.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|cuteteenschoolgirlz.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 94: hralda.info
echo "Resolving [94/100]: hralda.info"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hralda.info 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hralda.info|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hralda.info|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 95: sendrakhizonline.com
echo "Resolving [95/100]: sendrakhizonline.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 sendrakhizonline.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|sendrakhizonline.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|sendrakhizonline.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 96: hayalforum.net
echo "Resolving [96/100]: hayalforum.net"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 hayalforum.net 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|hayalforum.net|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|hayalforum.net|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 97: begleyhutton.com
echo "Resolving [97/100]: begleyhutton.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 begleyhutton.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|begleyhutton.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|begleyhutton.com|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 98: bmw-parts.ru
echo "Resolving [98/100]: bmw-parts.ru"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 bmw-parts.ru 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|bmw-parts.ru|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|bmw-parts.ru|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 99: rterc.in
echo "Resolving [99/100]: rterc.in"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 rterc.in 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|rterc.in|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|rterc.in|$latency|none" >> $RESULTS_FILE
    echo "  ✗ Failed (Latency: $latency ms)"
fi

# Resolve URL 100: monitis.com
echo "Resolving [100/100]: monitis.com"
start_time=$(date +%s%N)
result=$(dig +short +time=2 +tries=1 monitis.com 2>&1)
end_time=$(date +%s%N)
latency=$((($end_time - $start_time) / 1000000))

# Check for success if result is not empty and does NOT contain an error string
if [[ -n "$result" && "$result" != *"connection refused"* && "$result" != *"timed out"* ]]; then
    ip_address=$(echo "$result" | head -n 1)
    successful=$((successful + 1))
    total_latency=$((total_latency + latency))
    echo "  SUCCESS|monitis.com|$latency|$ip_address" >> $RESULTS_FILE
    echo "  ✓ Success: $ip_address (Latency: $latency ms)"
else
    failed=$((failed + 1))
    echo "  FAILED|monitis.com|$latency|none" >> $RESULTS_FILE
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
echo '  "host": "h3",' >> $OUTPUT_FILE
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
echo "Summary for h3"
echo "=========================================="
echo "Total URLs: $total_urls"
echo "Successful Resolutions: $successful"
echo "Failed Resolutions: $failed"
echo "Average Latency: $avg_latency ms"
echo "Average Throughput: $avg_throughput bytes/sec"
echo "Results saved to: $OUTPUT_FILE"
echo "=========================================="
echo ""
