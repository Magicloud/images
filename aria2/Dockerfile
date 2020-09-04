FROM alpine
ARG the_host
RUN apk add --no-cache aria2 curl
ENV the_host ${the_host}
CMD aria2c --enable-rpc=true --rpc-listen-all=true --max-concurrent-downloads=1024 --dir=/downloads --bt-tracker="$(curl "https://${the_host}/")"
