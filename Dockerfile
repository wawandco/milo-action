# Container image that runs your code
FROM alpine

RUN curl -sf https://gobinaries.com/wawandco/milo/cmd/milo | sh
RUN milo version

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]