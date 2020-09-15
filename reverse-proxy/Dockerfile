FROM docker.pkg.github.com/magicloud/images/alpine-nginx:650f0eb
RUN mv /etc/nginx/conf.d/default.conf /
COPY reverse_proxy.sh /reverse_proxy.sh
ENTRYPOINT ["/reverse_proxy.sh"]
