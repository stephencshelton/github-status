#!/bin/sh

if [ -n "$token_file" ] && [ -f "$token_file" ]; then
  # If the token_file variable is set and points to a file that exists, read the contents of the file into the ACCESS_TOKEN variable
  echo "Using mounted github token"
  ACCESS_TOKEN=$(cat ${token_file})
else
  # If the token_file variable is not set or does not point to a file that exists, use the access_token environment variable
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
