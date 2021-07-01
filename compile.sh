#!/bin/bash

xcodebuild clean -workspace /Users/runner/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace -scheme ShadowsocksX-NG -configuration Release
xcodebuild archive -workspace /Users/runner/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace -scheme ShadowsocksX-NG -archivePath /Users/runner/archive/ShadowsocksX-NG.xcarchive
tree /Users/runner/archive/ShadowsocksX-NG.xcarchive/Products/Applications