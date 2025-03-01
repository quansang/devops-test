#!/bin/bash
set -eo pipefail

# Executing the unit testing
eval "docker run" \
    -e "APP_ENV=test" \
    --entrypoint /bin/bash $AWS_ACCOUNT_ID.dkr.ecr.$AWS_REGION.amazonaws.com/$AWS_REPOSITORY_NAME:latest \
    -c "poetry run pytest -s"
