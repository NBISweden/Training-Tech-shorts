#!/bin/bash

# Read API key and URL from the YAML file
API_URL=$(grep 'api_url:' config.yaml | awk '{print $2}' | tr -d '"')
API_KEY=$(grep 'api_key:' config.yaml | awk '{print $2}' | tr -d '"')

# Call the API with the Authorization header
RESPONSE=$(curl -s -X GET "$API_URL" \
  -H "Authorization: Bearer $API_KEY" \
  -H "Content-Type: application/json")

# Print the response data
echo "$RESPONSE"