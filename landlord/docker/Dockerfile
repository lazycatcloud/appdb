FROM golang:alpine AS builder

RUN mkdir /cache
WORKDIR /cache

RUN apk add --update -t build-deps curl go git libc-dev gcc libgcc patch

ENV GO111MODULE=on
ENV GOPROXY=https://goproxy.cn,direct

ENV HTTP_PORT=8080
ENV WORK_COMMIT=a0d77dedbc3efb73b044678ba6da1c7a65f939fe
RUN git clone https://github.com/dwg255/landlord landlord
COPY patch.diff /cache/landlord

RUN cd /cache/landlord && \
  git checkout ${WORK_COMMIT} && \
  git apply patch.diff && \
  cd main && \
  go build -o /cache/landlord/start . && \
  # server run with 8080 port
  sed -i 's/80/8080/g' /cache/landlord/conf/app.conf && \
  # fix to w[w]s protocol
  sed -i 's/ws:/wss:/g' /cache/landlord/static/js/net.js

FROM alpine:3.16

RUN mkdir /app

# FIXME: 只需要保留二进制和一些配置文件就可以了, 不需要复制源代码吧!
COPY --from=builder /cache/landlord /app/landlord

WORKDIR /app/landlord

EXPOSE 8080

CMD [ "/app/landlord/start" ]