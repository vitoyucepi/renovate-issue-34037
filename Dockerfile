FROM ubuntu:24.04@sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782

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

FROM ubuntu:22.04@sha256:ed1544e454989078f5dec1bfdabd8c5cc9c48e0705d07b678ab6ae3fb61952d2

# renovate: datasource=repology depName=ubuntu_22_04/gosu versioning=loose
ARG GOSU_VERSION=1.14-1ubuntu0.1
# renovate: datasource=repology depName=ubuntu_22_04/tzdata versioning=loose
ARG TZDATA_VERSION=2024a-0ubuntu0.22.04.1

RUN apt-get update
RUN apt-cache policy tzdata
RUN apt-get install \
        tzdata="${TZDATA_VERSION}" \
        gosu="${GOSU_VERSION}" \
    ;

FROM ubuntu:20.04@sha256:8e5c4f0285ecbb4ead070431d29b576a530d3166df73ec44affc1cd27555141b

# renovate: datasource=repology depName=ubuntu_20_04/gosu versioning=loose
ARG GOSU_VERSION=1.10-1ubuntu0.20.04.2
# renovate: datasource=repology depName=ubuntu_20_04/tzdata versioning=loose
ARG TZDATA_VERSION=2024a-0ubuntu0.20.04.1

RUN apt-get update
RUN apt-cache policy tzdata
RUN apt-get install \
        tzdata="${TZDATA_VERSION}" \
        gosu="${GOSU_VERSION}" \
    ;
