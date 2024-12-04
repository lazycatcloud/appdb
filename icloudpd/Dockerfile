FROM golang:alpine AS builder
WORKDIR /app

RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories

COPY static ./static
COPY xtermjs ./xtermjs
COPY *.go .
COPY *.html .
COPY go.mod .
COPY go.sum .

RUN CGO_ENABLED=0 go build -o server
# ============RUNTIME=============
FROM alpine:latest
RUN sed -i 's#https\?://dl-cdn.alpinelinux.org/alpine#https://mirrors.tuna.tsinghua.edu.cn/alpine#g' /etc/apk/repositories
RUN echo "https://mirrors.tuna.tsinghua.edu.cn/alpine/latest-stable/community" >> /etc/apk/repositories

ARG icloudpd_version="1.24.4"
ARG build_dependencies="gcc python3-dev libc-dev libffi-dev cargo openssl-dev"
ARG app_dependencies="bash findutils nano nano-syntax py3-pip exiftool coreutils tzdata curl imagemagick shadow jq jpeg bind-tools expect inotify-tools msmtp"


RUN echo "$(date '+%d/%m/%Y - %H:%M:%S') | Install requirements" && \
   apk add --no-progress --no-cache --virtual build ${build_dependencies} && \
   apk add --no-progress --no-cache ${app_dependencies} && \
echo "$(date '+%d/%m/%Y - %H:%M:%S') | Install iCloudPD latest release" && \
   python -m venv /opt/icloudpd && \
   source /opt/icloudpd/bin/activate && \
   pip3 install --upgrade pip && \
   pip3 install --no-cache-dir icloudpd && \
   deactivate && \
   apk del build

COPY --from=builder /app/server /usr/bin/server
COPY --from=builder /app/static /usr/local/share/static
COPY --from=builder /app/config.html /usr/local/share/config.html

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/icloudpd/bin
WORKDIR /usr/local/share
CMD ["/usr/bin/server"]