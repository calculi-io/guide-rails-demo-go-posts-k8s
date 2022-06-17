FROM alpine

RUN apk add --no-cache mysql-client

COPY dist/grposts /bin/

RUN rm -rf /var/cache/apk/*

EXPOSE 8005

ENTRYPOINT [ "/bin/grposts" ]
