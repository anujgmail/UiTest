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
appCenterLoginApiToken="9f69dd65-3ed9-4753-80ad-1dbeaeaf967d" # this comes from the build environment variables
appName="alok.pandey2/UiTest"
deviceSetName="alok.pandey2/hostdevice"
testSeriesName="master"

echo ""
echo "Start XCUITest run"
echo "   App Name: $appName"
echo " Device Set: $deviceSetName"
echo "Test Series: $testSeriesName"
echo ""

echo "> Run UI test command"
# Note: must put a space after each parameter/value pair
appcenter test run xcuitest --app $appName --devices $deviceSetName --app-path $APPCENTER_OUTPUT_DIRECTORY/UiTest.ipa --test-series $testSeriesName --locale "en_US" --build-dir $APPCENTER_SOURCE_DIRECTORY/UiTest.UITests/bin/Debug --uitest-tools-dir $APPCENTER_SOURCE_DIRECTORY/packages/XCUITest/tools --token $appCenterLoginApiToken

echo ""
echo "**************************************************************************************************"
echo "Post Build Script complete"
echo "**************************************************************************************************"
