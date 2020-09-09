#!/bin/sh

ARIA2="${1}"
URL="http://localhost/#!/settings/rpc/set/${ARIA2}"

while ! wget -O /dev/null "${URL}"; do sleep 1; done &

nginx
