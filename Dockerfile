FROM ghcr.io/dockhippie/alpine:3.23@sha256:f07d501357a45f80b1c874224206284cde04a4fa8e7b8784dff9f7d6fa5360f1
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache bash python3 python3-dev py3-pip && \
  pip3 install --break-system-packages -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
