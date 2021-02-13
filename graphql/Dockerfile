FROM alpine
RUN apk add npm
RUN npm install -g postgraphile
ENV CONN_STR=''
CMD postgraphile -c ${CONN_STR} -n 0.0.0.0 --enhance-graphiql

