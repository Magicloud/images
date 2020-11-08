FROM jorge07/alpine-php:7.4
RUN apk add -U php7-soap@cast
RUN sed -i '$ a catch_workers_output = yes\nphp_flag[display_errors] = on\nphp_admin_value[error_log] = /var/log/fpm-php.www.log\nphp_admin_flag[log_errors] = on' /etc/php7/php-fpm.d/www.conf
RUN touch /var/log/fpm-php.www.log
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/usr/sbin/php-fpm7", "-R", "--nodaemonize"]
