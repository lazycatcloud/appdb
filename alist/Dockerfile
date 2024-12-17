# before build
# mount alist source to ./alist
# mount alist-web source to ./alist-web
FROM node:18.20-alpine AS frontend

ENV http_proxy=http://192.168.1.128:1085
ENV https_proxy=http://192.168.1.128:1085

RUN npm i -g pnpm

COPY ./alist-web /alist-web
COPY ./build/zh-CN.zip /alist-web
#WORKDIR /alist-web/solid-router
#RUN npm install
#RUN npm run build
WORKDIR /alist-web
RUN unzip zh-CN.zip
RUN mv src/lang/zh-CN src/lang/zh
RUN node ./scripts/i18n.mjs
#RUN cp src/lang/en/entry.ts src/lang/zh/entry.ts
RUN pnpm install
RUN pnpm build

###################################################

FROM golang:1.23 AS backend

ENV GOPROXY=https://goproxy.cn

COPY ./alist /alist
WORKDIR /alist
RUN rm -rf /alist/public/dist
COPY --from=frontend /alist-web/dist /alist/public/dist
RUN ls -l /alist/public/dist
RUN bash simple-build.sh

FROM golang:1.23
USER root
COPY --from=backend /alist/alist /usr/bin/alist