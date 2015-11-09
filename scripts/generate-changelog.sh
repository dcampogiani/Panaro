#!/bin/sh

REPO_SLUG = "$TRAVIS_REPO_SLUG"
IFS='/' read -a repoArray <<< "$TRAVIS_REPO_SLUG"
REPO_OWNER="${repoArray[0]}"
REPO_NAME="${repoArray[1]}"

github-changes -o $REPO_OWNER -r $REPO_NAME -b $TRAVIS_BRANCH -a -k ${gitHubAccessToken}
