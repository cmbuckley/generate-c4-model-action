FROM alpine:latest

RUN apk update
RUN apk add plantuml

FROM structurizr/cli:latest

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
