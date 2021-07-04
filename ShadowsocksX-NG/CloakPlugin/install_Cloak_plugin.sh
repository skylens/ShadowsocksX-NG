#!/bin/sh

#  install_Cloak_plugin.sh
#  ShadowsocksX-NG
#
#  Created by skylens on 2021/7/4.
#  Copyright © 2021 qiuyuzhou. All rights reserved.

cd "$(dirname "${BASH_SOURCE[0]}")"

mkdir -p "$HOME/Library/Application Support/ShadowsocksX-NG/CloakPlugin"
cp -f ck-client "$HOME/Library/Application Support/ShadowsocksX-NG/CloakPlugin/"

ln -sfh "$HOME/Library/Application Support/ShadowsocksX-NG/CloakPlugin/ck-client" "$HOME/Library/Application Support/ShadowsocksX-NG/plugins/ck-client"

echo "install Cloak done"
