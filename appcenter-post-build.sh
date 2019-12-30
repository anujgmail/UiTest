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

curl --version
echo "curl version check"


curl -X POST \
  https://automation.codebarrel.io/pro/hooks/7945b3d5ad2d517b06383b712d2a99eae274208c \
  -H 'Accept: */*' \
  -H 'Accept-Encoding: gzip, deflate' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  -H 'Content-Length: 68' \
  -H 'Host: automation.codebarrel.io' \
  -H 'Postman-Token: 3fe13524-4385-43b1-820a-8ce591d233d0,a6369c57-ef72-4d76-b0b0-87ce9a1077db' \
  -H 'User-Agent: PostmanRuntime/7.18.0' \
  -H 'cache-control: no-cache' \
  -d '{
	"data": 
	{
		"releaseVersion":"5.3.2",
		"url":"google.com",
    		"APPCENTER_BRANCH":"{{APPCENTER_BRANCH}}",
    		"APPCENTER_BUILD_ID":"{{APPCENTER_BUILD_ID}}"
	}
}'

echo "APPCENTER_BRANCH: $APPCENTER_BRANCH"
echo "APPCENTER_BUILD_ID: $APPCENTER_BUILD_ID"
echo "After Jira automation Command"

##################################################
# Preparing UI Tests
##################################################

  

## Note: must put a space after each parameter/value pair
#appcenter test run xcuitest --app $appName --devices $deviceSetName --app-path $appPath --test-series $testSeriesName --locale "en_US" --build-dir $buildDirectory --token $appCenterLoginApiToken

echo ""
echo "**************************************************************************************************"
echo "Post Build Script complete"
echo "**************************************************************************************************"
