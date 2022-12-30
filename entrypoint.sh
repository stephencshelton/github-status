#!/bin/bash

# Check if the ACCESS_TOKEN file exists
if [ -f ${tokenFile} ]; then
  # If the file exists, read the contents of the file into the ACCESS_TOKEN variable
  echo "Using mounted github token"
  ACCESS_TOKEN=$(cat ${token_file})
else
  # If the file does not exist, use the ACCESS_TOKEN environment variable
  echo "Using environment github token"
  ACCESS_TOKEN=${access_token}
fi

# Use curl to make an API request to GitHub to post a status to a pull request
curl -X POST \
  https://api.github.com/repos/${organization}/${app_repo}/statuses/${git_sha} \
  -H "Authorization: token ${ACCESS_TOKEN}" \
  -H "Content-Type: application/json" \
  -d "{
    \"state\": \"${state}\",
    \"description\": \"${description}\",
    \"context\": \"${context}\"
  }"
