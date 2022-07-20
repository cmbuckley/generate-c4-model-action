FROM structurizr/cli:latest as structurizr

ARG PLANTUML_VERSION=1.2022.6

RUN microdnf makecache
RUN microdnf -y install curl plantuml

#WORKDIR /usr/local/plantuml
#RUN curl -SLo plantuml.jar https://github.com/plantuml/plantuml/releases/download/v${PLANTUML_VERSION}/plantuml-${PLANTUML_VERSION}.jar

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
