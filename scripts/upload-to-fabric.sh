#!/bin/sh
if [ -z ${TRAVIS_TAG+x} ]; then
  echo "Skipping upload to Fabric Beta since no tag was found";
else
  echo "Uploading artifact to Fabric Beta";
  echo $TRAVIS_TAG;
  ./gradlew assembleRelease crashlyticsUploadDistributionRelease;
fi
