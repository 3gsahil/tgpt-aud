#!/bin/bash

# Prompt the user to enter a query
echo "Please enter your query:"
read QUERY

# Check if the query is empty
if [ -z "$QUERY" ]; then
    echo "Query cannot be empty."
    exit 1
fi

# Run the command with the provided query
tgpt -q "$QUERY" | ./piper --model en_US-libritts-high.onnx --output-raw | aplay -r 22050 -f S16_LE -t raw -
