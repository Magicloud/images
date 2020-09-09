FROM alpine
RUN apk add --no-cache nginx
RUN sed -i '/user nginx;/ a daemon off;' /etc/nginx/nginx.conf
RUN mkdir /run/nginx/
CMD nginx
