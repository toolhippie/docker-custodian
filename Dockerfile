FROM ghcr.io/webhippie/alpine:3.17
ENTRYPOINT [""]

# renovate: datasource=pypi depName=docker-custodian
ENV DOCKER_CUSTODIAN_VERSION=0.7.4

RUN apk update && \
  apk upgrade && \
  apk add python3 python3-dev py3-pip && \
  pip3 install -U docker-custodian==${DOCKER_CUSTODIAN_VERSION} && \
  rm -rf /var/cache/apk/* /root/.cache
