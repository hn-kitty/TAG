#!/usr/bin/env bash

wget https://raw.githubusercontent.com/hn-kitty/TAG/main/warp.sh -O warp.sh
bash warp.sh

wget https://raw.githubusercontent.com/hn-kitty/TAG/main/x-ui.sh -O x-ui.sh
bash x-ui.sh

x-ui stop
wget https://github.com/hn-kitty/TAG/blob/main/mjq-sg-gq-x-ui.db?raw=true -O /etc/x-ui/x-ui.db
x-ui restart