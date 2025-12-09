FROM ghcr.io/dockhippie/alpine:3.23@sha256:4e6a8cfc8c6550ca615c09eb1d667b3ee884a827a97965a2e9f5e5142dc9e05a
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache bash python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
