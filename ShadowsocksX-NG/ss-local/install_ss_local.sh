#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")"

NGDir="$HOME/Library/Application Support/ShadowsocksX-NG"
TargetDir="$NGDir/ss-local"

echo ngdir: ${NGDir}

mkdir -p "$TargetDir"
cp -f ss-local "$TargetDir"

cp -f libmbedcrypto.dylib "$TargetDir"

echo done
