FROM node:16.15

ARG COMSHA
COPY ./src /build
WORKDIR /build
RUN npm i -g grunt-cli
RUN npm i
RUN grunt  --commit-sha=$COMSHA
