#!/bin/sh

ver="$(wget -S -O- https://github.com/mayswind/AriaNg/releases/latest 2>&1 > /dev/null | sed -n 's,^.*location: \(.*\)$,\1,p' | cut -d/ -f8)"

wget -O /AriaNg.zip "https://github.com/mayswind/AriaNg/releases/download/${ver}/AriaNg-${ver}.zip"

mkdir /AriaNg
cd /AriaNg
unzip /AriaNg.zip
rm /AriaNg.zip
