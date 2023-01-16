# github-status
Simple container to post statuses to Github
# Environment Variables
This containers uses the following environment variables
| Name          | Description                                                |
| ------------- | ---------------------------------------------------------- |
| token_file    | String path to a file that contains a Github Api token     |
| access_token  | The Github Api token                                       |
| organization  | Name of Github organization the repository belongs to      |
| app_repo      | Repository name                                            |
| git_sha       | The long git sha of the commit to associate a status with  |
| state         | Can be either success, pending, or failure                 |
| description   | Short text description of the status                       |
| context       | Name of status, used to seperate statuses from one another |
| target_url    | Url to link the status back to in the Github UI            |
# Usage
To test the container locally you can use
```
docker run \
-e access_token=ghp_fdssafewatgragfdsagtrwatea \
-e organization=stephencshelton \
-e app_repo=github-status \
-e git_sha=98fc496c4fb59448eef1341d3e8373ec366d4f16 \
-e state=success \
-e description="My status description" \
-e target_url="https://example.com" \
-e context="my-status-name" \
stephenshelton/github-status:1.0.0
```
