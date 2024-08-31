FROM golang:1.19-alpine AS build

RUN wget https://gitee.com/clh21/sh/raw/master/mirror.sh && sh ./mirror.sh; rm -f mirror.sh
RUN apk update && apk add --no-cache gcc musl-dev git

WORKDIR /app

COPY ./srv/ .
ENV GOPROXY=https://goproxy.cn,direct
RUN go get -d -v ./...
RUN go install -v ./...



FROM alpine:latest
RUN wget https://gitee.com/clh21/sh/raw/master/mirror.sh && sh ./mirror.sh; rm -f mirror.sh
RUN apk update && apk add --no-cache ca-certificates
COPY --from=build /go/bin/goshs /usr/local/bin/goshs
RUN mkdir /data
WORKDIR /data
CMD ["goshs"]