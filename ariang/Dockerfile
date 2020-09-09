FROM alpine
RUN apk add --no-cache nginx
COPY fetch.sh /
RUN /fetch.sh
RUN mkdir /run/nginx/
RUN sed -i '/location \// a root /AriaNg;' /etc/nginx/conf.d/default.conf
RUN sed -i '/return 404;/ d' /etc/nginx/conf.d/default.conf
RUN sed -i '/user nginx;/ a daemon off;' /etc/nginx/nginx.conf
COPY worker.sh /
ENTRYPOINT /worker.sh
