# copy by https://github.com/wy580477/musicn-container/blob/main/Dockerfile

FROM node:alpine

WORKDIR /data

RUN apk add --no-cache tini \
    && npm i musicn -g \
    && rm -rf ${HOME}/.npm

ENTRYPOINT ["/sbin/tini", "--", "msc", "-q"]