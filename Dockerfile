FROM alpine:latest

RUN apk update && apk add curl

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
