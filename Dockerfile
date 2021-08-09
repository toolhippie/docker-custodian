FROM webhippie/python:3.7

ENTRYPOINT ["/usr/bin/dcgc"]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  pip3 install -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/*
