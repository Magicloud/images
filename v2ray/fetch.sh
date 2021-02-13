#!/bin/sh

ver="$(wget -S -O- https://github.com/v2ray/v2ray-core/releases/latest 2>&1 > /dev/null | sed -n 's,^.*Location: \(.*\)$,\1,p' | cut -d/ -f8 | head -1)"

#wget -O /v2ray.zip "https://github.com/v2ray/v2ray-core/releases/download/${ver}/v2ray-linux-64.zip"
wget -O /v2ray.zip "https://github.com/v2fly/v2ray-core/releases/download/${ver}/v2ray-linux-64.zip"

mkdir /v2ray
cd /v2ray
unzip /v2ray.zip
rm /v2ray.zip
