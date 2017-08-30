#!/bin/bash

#https://stackoverflow.com/questions/4964799/write-a-bash-shell-script-that-consumes-a-constant-amount-of-ram-for-a-user-defi

echo "begin allocating memory..."
for index in $(seq 10000); do
    value=$(seq -w -s '' $index $(($index + 100000)))
    eval array$index=$value
done
echo "...end allocating memory"

echo "staying here with the memory allocated"
tail -f /dev/null
