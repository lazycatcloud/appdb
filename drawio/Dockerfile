FROM openjdk:11-jdk-slim AS build

RUN apt-get update -y && \
# this solves some weird issue with openjdk-11-jdk-headless
# https://github.com/nextcloud/docker/issues/380
    mkdir -p /usr/share/man/man1 && \
    apt-get install -y ant
COPY ./source /drawio

RUN cd /drawio/etc/build/ && \
    ant war

FROM scratch
COPY --from=build /drawio/src/main/webapp /dist
