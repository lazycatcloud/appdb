FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.bfsu.edu.cn/g' /etc/apk/repositories
RUN apk update

RUN apk add nginx
# RUN apk add git
# RUN apk add bash py3-yaml

# install system
# COPY /src/hc-app-manager /hc-app-manager
#
# install ui
COPY ui/dist /usr/share/nginx/html

COPY src/backend /backend
# nginx configure
COPY deploy/nginx.conf /etc/nginx/nginx.conf

# configure
USER root

# entrypoint
COPY /deploy/entrypoint.sh /entrypoint.sh
CMD [ "/entrypoint.sh" ]
