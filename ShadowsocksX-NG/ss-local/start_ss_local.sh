#!/bin/sh

chmod 644 "$HOME/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.local.plist"
launchctl load -wF "$HOME/Library/LaunchAgents/com.qiuyuzhou.shadowsocksX-NG.local.plist"
launchctl start com.qiuyuzhou.shadowsocksX-NG.local
