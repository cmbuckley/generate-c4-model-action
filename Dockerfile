FROM eclipse-temurin:11

RUN apt update
RUN apt install -y plantuml

COPY entrypoint.sh /entrypoint.sh
COPY structurizr-cli /structurizr-cli

ENTRYPOINT ["/entrypoint.sh"]
