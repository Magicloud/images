#!/bin/sh

PORT="${1}"
BACKEND="${2}"
EXTRA_HEADER="${3}"

sed -i "s,\([ :]\)80,\1${PORT},g" /etc/nginx/conf.d/default.conf
sed -i "/location \// a proxy_pass ${BACKEND};" /etc/nginx/conf.d/default.conf
[ -n "${EXTRA_HEADER}" ] && sed -i "/location \// i add_header '${EXTRA_HEADER%:*}' '${EXTRA_HEADER#*:}';" /etc/nginx/conf.d/default.conf
sed -i '/return 404;/ d' /etc/nginx/conf.d/default.conf
nginx
