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
# Usage
To test the container locally you can use
```
docker run \
--env access_token=ghp_fdssafewatgragfdsagtrwatea \
--env organization=stephencshelton \
--env app_repo=github-status \
--env git_sha=98fc496c4fb59448eef1341d3e8373ec366d4f16 \
--env state=success \
--env description="My status description" \
--env context="my-status-name" \
stephenshelton/github-status:1.0.0
```
