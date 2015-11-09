#!/bin/bash
REPO_SLUG="$TRAVIS_REPO_SLUG"
echo $REPO_SLUG
IFS='/' read -a repoArray <<< "$REPO_SLUG"
REPO_OWNER="${repoArray[0]}"
REPO_NAME="${repoArray[1]}"

github-changes -o $REPO_OWNER -r $REPO_NAME -b $TRAVIS_BRANCH -a -k ${gitHubAccessToken}
