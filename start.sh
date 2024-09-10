#!/bin/bash

CONFIG_FILE="/data/config.txt"

if [ -f "$CONFIG_FILE" ]; then
    source "$CONFIG_FILE"
    /app/ccminer/ccminer -a verus -o "$POOL_URL" -u "$WALLET_ADDRESS" -p "$PASSWORD" -t "$THREADS"
else
    echo "Config file not found: $CONFIG_FILE"
    exit 1
fi