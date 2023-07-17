FROM alpine:latest

RUN apk update && apk add --no-cache dante-server

COPY sockd.conf /etc/sockd.conf

CMD ["sockd", "-f", "/etc/sockd.conf", "-N", "1"]
