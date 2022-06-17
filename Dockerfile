FROM alpine

RUN apk add --no-cache mysql-client

COPY dist/posts /bin/

RUN rm -rf /var/cache/apk/*

EXPOSE 8005

ENTRYPOINT [ "/bin/posts" ]
