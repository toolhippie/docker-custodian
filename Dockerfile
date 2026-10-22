FROM ghcr.io/dockhippie/alpine:3.23@sha256:0518a97b1c6406d9777d435432dcb525b4f47a84562e13a6472f55ac6623f9f6
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache bash python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
