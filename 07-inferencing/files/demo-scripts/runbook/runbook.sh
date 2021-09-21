#!/bin/bash
echo "runbook process started ..... $(date)"

source ./config.sh

load/01-creditscore-clear.sh

echo "runbook process completed ..... $(date)"