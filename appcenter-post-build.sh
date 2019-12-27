#!/usr/bin/env bash

# Post Build Script

set -e # Exit immediately if a command exits with a non-zero status (failure)

echo "**************************************************************************************************"
echo "Post Build Script"
echo "**************************************************************************************************"



##################################################
# Start UI Tests
##################################################

# variables
appCenterLoginApiToken=$APP_TOKEN # this comes from the build environment variables
appName="alok.cbre-gmail.com/UiTest"
deviceSetName="alok.cbre-gmail.com/hostdevice"
testSeriesName="master"
appPath=$APPCENTER_OUTPUT_DIRECTORY/UiTest.ipa
buildDirectory="DerivedData/Build/Products/Debug-iphoneos"

echo ""
echo "Start XCUITest run"
echo "App Name: $appName"
echo "Device Set: $deviceSetName"
echo "Test Series: $testSeriesName"
echo "Path: $APPCENTER_OUTPUT_DIRECTORY"
echo "Source Path: $APPCENTER_SOURCE_DIRECTORY"
echo ""

echo "> Run UI test command"


##################################################
# Preparing UI Tests
##################################################
  curl --request POST \
  --url 'https://automation.codebarrel.io/pro/hooks/7945b3d5ad2d517b06383b712d2a99eae274208c?issue=TEST-123&Content-Type=application/json' \
  --header 'Accept: */*' \
  --header 'Accept-Encoding: gzip, deflate' \
  --header 'Cache-Control: no-cache' \
  --header 'Connection: keep-alive' \
  --header 'Content-Length: 175' \
  --header 'Content-Type: text/plain' \
  --header 'Host: automation.codebarrel.io' \
  --header 'Postman-Token: bdb8020f-62c9-4b5a-abe8-99692cf8ddb3,fbb695c0-e65c-427b-a391-8bc28c243423' \
  --header 'User-Agent: PostmanRuntime/7.18.0' \
  --header 'cache-control: no-cache' \
  --data '{\n    "fields": {\n        "environment": "Env",\n        "description": "Description here",\n        "labels": [\n            "bugfix",\n            "blitz_test", "iOS"\n        ]\n    }\n}'

## Note: must put a space after each parameter/value pair
#appcenter test run xcuitest --app $appName --devices $deviceSetName --app-path $appPath --test-series $testSeriesName --locale "en_US" --build-dir $buildDirectory --token $appCenterLoginApiToken

echo ""
echo "**************************************************************************************************"
echo "Post Build Script complete"
echo "**************************************************************************************************"
