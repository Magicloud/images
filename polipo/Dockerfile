FROM alpine
RUN sed -n '/\/main/ s,/[^/]*/main,/edge/testing,p' /etc/apk/repositories >> /etc/apk/repositories
RUN apk add --no-cache polipo
CMD polipo
