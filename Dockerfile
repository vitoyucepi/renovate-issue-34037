FROM ubuntu:24.04

# renovate: datasource=repology depName=ubuntu_24_04/gosu versioning=loose
ARG GOSU_VERSION=1.17-1ubuntu0.24.04.2
# renovate: datasource=repology depName=ubuntu_24_04/tzdata versioning=loose
ARG TZDATA_VERSION=2024a-3ubuntu1.1

RUN apt-get update
RUN apt-cache policy tzdata
RUN apt-get install \
      tzdata="${TZDATA_VERSION}" \
      gosu="${GOSU_VERSION}" \
    ;
