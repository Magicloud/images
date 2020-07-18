FROM alpine
RUN apk add --no-cache samba
CMD /bin/sh -c 'ionice -c 3 /usr/sbin/smbd -FS --no-process-group < /dev/null'
