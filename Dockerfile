FROM alpine:latest

RUN apk add haproxy tini

COPY docker-entrypoint.sh /

ENTRYPOINT ["tini", "--"]

CMD ["/docker-entrypoint.sh"]