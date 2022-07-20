FROM structurizr/cli:latest as structurizr

FROM eclipse-temurin:11

COPY --from=structurizr /usr/local/structurizr-cli /usr/local/structurizr-cli

RUN apt update
RUN apt install -y plantuml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
