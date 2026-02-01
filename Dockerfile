FROM ghcr.io/dockhippie/alpine:3.23@sha256:290fa97fc3c00802b2a80f40cc21cdd5e6534a4422dcdb0abd57738ac08e86bf
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache bash python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
