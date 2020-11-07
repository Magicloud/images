FROM docker.pkg.github.com/magicloud/images/alpine-nginx:650f0eb
VOLUME /app
COPY php_bypass.sh /php_bypass.sh
ENTRYPOINT ["/php_bypass.sh"]
