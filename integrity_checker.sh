#!/bin/bash

GREEN='\e[32m'
RED='\e[31m'
NC='\e[0m'

if [ "$1" -eq 1 ]; then
    sha512sum "$2" | cut -d " " -f1 > hash.txt
    chmod 400 hash.txt
    echo -e "${GREEN}[+] SHA-512 hash successfully generated and secured for file: $2${NC}"
elif [ "$1" -eq 2 ]; then
    old_hash=$(cat hash.txt)
    new_hash=$(sha512sum "$2" | cut -d " " -f1)
    if [ "$old_hash" == "$new_hash" ]; then
        echo -e "${GREEN}[+] SUCCESS: Integrity verified. No changes detected in '$2'.${NC}"
    else
        echo -e "${RED}[!] CRITICAL ALERT: Integrity violation detected! File '$2' has been modified.${NC}"
    fi
fi
 


