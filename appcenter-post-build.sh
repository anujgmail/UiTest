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
appName="alokpandey168-gmail.com/UiTest"
deviceSetName="alokpandey168-gmail.com/iPhone6s"
testSeriesName="master"
appPath=$APPCENTER_OUTPUT_DIRECTORY/UiTest.ipa
buildDirectory="DerivedData/Build/Products/Debug-iphonesimulator"

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

# How to build a xcodeproj
rm -rf DerivedData
xcrun xcodebuild build-for-testing \
  -configuration Debug \
  -project UiTest.xcodeproj \
  -sdk iphonesimulator \
  -scheme UiTest \
  -derivedDataPath DerivedData
  --token $appCenterLoginApiToken

xcrun xcodebuild -list

# Upload your test to App Center
appcenter test run xcuitest \
  --app $appName \
  --devices $deviceSetName \
  --test-series $testSeriesName \
  --locale "en_US" \
  --build-dir $buildDirectory \
  --token $appCenterLoginApiToken

## Note: must put a space after each parameter/value pair
#appcenter test run xcuitest --app $appName --devices $deviceSetName --app-path $appPath --test-series $testSeriesName --locale "en_US" --build-dir $buildDirectory --token $appCenterLoginApiToken

echo ""
echo "**************************************************************************************************"
echo "Post Build Script complete"
echo "**************************************************************************************************"
