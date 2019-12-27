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
##################################################
# Preparing UI Tests
##################################################

  

## Note: must put a space after each parameter/value pair
#appcenter test run xcuitest --app $appName --devices $deviceSetName --app-path $appPath --test-series $testSeriesName --locale "en_US" --build-dir $buildDirectory --token $appCenterLoginApiToken

echo ""
echo "**************************************************************************************************"
echo "Post Build Script complete"
echo "**************************************************************************************************"
