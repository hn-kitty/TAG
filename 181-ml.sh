#!/usr/bin/env bash

wget https://raw.githubusercontent.com/hn-kitty/TAG/main/warp.sh -O warp.sh
bash warp.sh 4

wget https://raw.githubusercontent.com/hn-kitty/TAG/main/x-ui.sh -O x-ui.sh
bash x-ui.sh

x-ui stop
wget https://github.com/hn-kitty/TAG/blob/main/181-ml-x-ui.db?raw=true -O /etc/x-ui/x-ui.db
x-ui restart
