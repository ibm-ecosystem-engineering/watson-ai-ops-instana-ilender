#!/bin/bash
echo ""
# echo "Process started ...  $(date)"

source ./config.sh

### consumeMemory/100 MB
curl $API_URL_CREDIT_SCORE/creditscore/leakMemoryUptoMaxPercentage/$increaseSizeInKB/$memoryMaxPercentage

### memoryStatus
# curl $API_URL_CREDIT_SCORE/creditscore/memoryStatus

# echo "Process completed ...  $(date)"
echo ""

