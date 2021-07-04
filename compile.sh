#!/bin/bash

xcodebuild clean archive \
-workspace /Users/runner/work/ShadowsocksX-NG/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace \
-scheme ShadowsocksX-NG -archivePath /Users/runner/archive/ShadowsocksX-NG.xcarchive | xcpretty

xcodebuild install DSTROOT=build/root \
-workspace /Users/runner/work/ShadowsocksX-NG/ShadowsocksX-NG/ShadowsocksX-NG.xcworkspace \
-scheme ShadowsocksX-NG | xcpretty