FROM ghcr.io/dockhippie/alpine:3.23@sha256:b2f0d0b2460a72855e02bbb1c62bd1b6387c70da93984d4c8ea3e85f5dbfd4a8
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache bash python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
