# docker build . -t registry.lazycat.cloud/allanpk716/chinesesubfinder:v0.55.3-pathch2
# 源码bind到./source目录下
FROM golang:1.22.3-alpine3.18 AS build

ENV all_proxy=socks5://192.168.1.128:1090
ENV http_proxy=http://192.168.1.128:1085
ENV https_proxy=http://192.168.1.128:1085

ENV TZ=Asia/Shanghai \
    PERMS=true \
    PUID=1026 \
    PGID=100 \
    UMASK=022 \
    PS1="\u@\h:\w \$ "
ARG TARGETARCH
RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories

COPY ./source /source 

WORKDIR /source
RUN apk add nodejs npm

RUN npm --prefix frontend ci
RUN npm --prefix frontend run build

RUN apk add gcc g++ git sqlite-static
RUN apk add webrtc-audio-processing webrtc-audio-processing-dev
RUN go env -w GOPROXY=https://goproxy.cn,direct
RUN go mod tidy && go mod vendor
RUN sed -i 's#https://raw.githubusercontent.com/EDDYCJY/fake-useragent/v0.2.0/static/#https://gitee.com/mirrors_eddycjy/fake-useragent/raw/v0.2.0/static/#g' ./vendor/github.com/EDDYCJY/fake-useragent/setting/setting.go
RUN rm -rf ./vendor/github.com/baabaaox/go-webrtcvad/
RUN git clone https://github.com/baabaaox/go-webrtcvad ./vendor/github.com/baabaaox/go-webrtcvad/
RUN go build \
      -ldflags="-X main.AppVersion=v0.55.2 -X main.LiteMode=true" \
      -o ./chinesesubfinder \
      ./cmd/chinesesubfinder

FROM alpine:3.18
CMD ["/bin/sh"]
ENV TZ=Asia/Shanghai \
    PERMS=true \
    PUID=1026 \
    PGID=100 \
    UMASK=022 \
    PS1="\u@\h:\w \$ "
RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories
RUN apk add --no-cache bash ffmpeg ca-certificates tini su-exec tzdata \
      && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \
      && echo "${TZ}" > /etc/timezone \
      && rm -rf /tmp/* /var/cache/apk/* 
COPY --from=build /source/chinesesubfinder /usr/bin/chinesesubfinder
COPY ./source/docker/lite-entrypoint.sh /usr/bin/entrypoint.sh
VOLUME ["/config", "/media"]
WORKDIR /config
EXPOSE 19035
ENTRYPOINT ["tini", "entrypoint.sh"]