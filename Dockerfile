FROM alpine:latest

RUN apk add --no-cache socat

COPY tunnel.sh /opt

ENTRYPOINT ["/bin/sh"]

CMD ["/opt/tunnel.sh"]

