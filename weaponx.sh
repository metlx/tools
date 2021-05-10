#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/metlx/dots
cd dots
echo -e "\e[90mSetting up .tmux_conf\e[0m"
sleep 1
mv .tmux.conf ~/
echo -e "\e[32mdone!\e[0m"
