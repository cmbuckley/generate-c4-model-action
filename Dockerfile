FROM structurizr/cli:latest as structurizr

FROM alpine

COPY --from=structurizr /usr/local/structurizr-cli /usr/local/structurizr-cli

RUN apk update
RUN apk add plantuml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
