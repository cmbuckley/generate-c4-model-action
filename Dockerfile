FROM structurizr/cli:latest

RUN apk update
RUN apk add plantuml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
