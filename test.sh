#!/bin/bash

messages=("Bonjour" "Bonsoir")

for message in "${messages[@]}"; do
    echo "$message"
    sleep 20
done