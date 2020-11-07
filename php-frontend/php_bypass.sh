#!/bin/sh

PHP="${1}"
HTTP_PORT="${2}"

cat > /etc/nginx/conf.d/default.conf << EOF
server {
  listen         ${HTTP_PORT} default_server;
  listen         [::]:${HTTP_PORT} default_server;
  root           /app;
  index          index.php index.html;

  location ~ [^/]\.php(/|$) {
    fastcgi_split_path_info ^(.+?\.php)(/.*)$;
    if (!-f \$document_root\$fastcgi_script_name) {
        return 404;
    }

    fastcgi_param HTTP_PROXY "";

    fastcgi_pass ${PHP};
    fastcgi_index index.php;

    include fastcgi.conf;
  }
}
EOF

nginx
