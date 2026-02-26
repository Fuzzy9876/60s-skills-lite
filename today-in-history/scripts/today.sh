#!/bin/bash

# Default parameters
ENCODING=""

# Parse command line arguments
while [[ $# -gt 0 ]]; do
  case $1 in
    --encoding|-e)
      ENCODING="$2"
      shift 2
      ;;
    *)
      # Unknown parameter
      echo "Unknown parameter: $1"
      echo "Usage: $0 [--encoding text|json|markdown]"
      exit 1
      ;;
  esac
done

# Validate encoding value if provided
if [[ -n "$ENCODING" ]]; then
  case $ENCODING in
    text|json|markdown)
      # Valid encoding
      ;;
    *)
      echo "Error: Unsupported encoding type '$ENCODING'."
      echo "Supported types are: text, json, markdown"
      exit 1
      ;;
  esac
fi

# Construct API URL
API_URL="https://60s.viki.moe/v2/today-in-history"
QUERY_STRING=""

if [[ -n "$ENCODING" ]]; then
  QUERY_STRING="encoding=${ENCODING}"
fi

if [[ -n "$QUERY_STRING" ]]; then
  API_URL="${API_URL}?${QUERY_STRING}"
fi

# Request API and output result
curl -s "$API_URL"
