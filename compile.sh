#!/bin/bash

# xcodebuild clean -workspace /Users/runner/work/ShadowsocksX-NG/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace -scheme ShadowsocksX-NG -configuration Release
# xcodebuild archive -workspace /Users/runner/work/ShadowsocksX-NG/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace -scheme ShadowsocksX-NG -archivePath /Users/runner/archive/ShadowsocksX-NG.xcarchive
# cd /Users/runner/archive/ShadowsocksX-NG.xcarchive/Products/Applications
# tar -zcvf /Users/runner/ShadowsocksX-NG-`git describe --tags`.tgz ShadowsocksX-NG.app
function set-env-from-proj {
  echo "::set-env name=$1::$(xcodebuild -scheme "ShadowsocksX-NG" -showBuildSettings | grep " $1 " | sed "s/[ ]*$1 = //")"
}
set-env-from-proj FULL_PRODUCT_NAME
set-env-from-proj INSTALL_PATH
set-env-from-proj PRODUCT_BUNDLE_IDENTIFIER
set-env-from-proj PRODUCT_MODULE_NAME
set-env-from-proj PRODUCT_NAME
set-env-from-proj PROJECT_NAME

xcodebuild clean archive \
-workspace /Users/runner/work/ShadowsocksX-NG/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace \
-scheme ShadowsocksX-NG -archivePath /Users/runner/archive/ShadowsocksX-NG.xcarchive | xcpretty

xcodebuild install DSTROOT=build/root \
-workspace /Users/runner/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace \
-scheme ShadowsocksX-NG | xcpretty

npm install -g appdmg
appdmg spec.json ShadowsocksX-NG.dmg