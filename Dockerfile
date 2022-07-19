FROM structurizr/cli:latest

RUN microdnf makecache --refresh
RUN microdnf -y install plantuml

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
