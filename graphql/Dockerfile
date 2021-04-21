FROM alpine
RUN apk add npm
RUN npm install -g postgraphile
ENV CONN_STR=''
ENV NS=''
CMD postgraphile -c ${CONN_STR} -s ${NS} -n 0.0.0.0 --enhance-graphiql

