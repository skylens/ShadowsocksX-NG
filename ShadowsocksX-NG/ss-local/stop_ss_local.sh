#!/bin/sh

launchctl stop com.qiuyuzhou.shadowsocksX-NG.local
launchctl unload "$HOME/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.local.plist"
