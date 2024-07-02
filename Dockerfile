FROM alpine:latest

# Install required dependencies
RUN apk update

# Install bash
RUN apk add bash

## Install curl
RUN apk add curl

RUN curl -sO https://releases.hashicorp.com/vault/1.6.3/vault_1.6.3_linux_amd64.zip
RUN unzip vault_1.6.3_linux_amd64.zip
RUN mv vault /usr/local/bin/
RUN rm vault_1.6.3_linux_amd64.zip

# Expose port 8200
EXPOSE 8200