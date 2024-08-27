#!/usr/bin/env bash

echo "pwd: `pwd`"
echo "\$0: $0"
echo "BASH_SOURCE[0]: ${BASH_SOURCE[0]}"
echo "dirname/readlink \$0: $(dirname -- "$(readlink -f -- "$0")")"
echo "dirname/readlink BASH_SOURCE[0]: $(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")"
echo
