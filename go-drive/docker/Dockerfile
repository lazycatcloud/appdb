# FROM 1.19.2-alpine3.16 AS golang
# FROM golang:1.19.2 AS golang
FROM golang:1.19-alpine AS builder

# FROM alpine:3.16 AS builder

# ARG REF=heads/master
ARG BUILD_VERSION

WORKDIR /work

ENV COMMIT_ID=6aa2824

RUN apk update && \
    apk add git curl tar nodejs npm build-base
# Setup golang
# COPY --from=golang /usr/local/go /usr/local/go
# ENV PATH="${PATH}:/usr/local/go/bin"

# ADD https://api.github.com/repos/devld/go-drive/git/refs/${REF} /tmp/ref-info

RUN git clone https://github.com/devld/go-drive.git
ADD patch.diff /work/go-drive/patch.diff
RUN cd go-drive && \
    git checkout ${COMMIT_ID} && \
    git apply patch.diff && \
    make target_name=go-drive_docker BUILD_VERSION=${BUILD_VERSION} all

FROM alpine:3.16

WORKDIR /app

RUN mkdir /demo
COPY --from=builder /work/go-drive/build/go-drive_docker.tar.gz .
# COPY --from=builder /work/go-drive /demo

VOLUME [ "/app/data" ]

RUN tar xf go-drive_docker.tar.gz && \
    rm go-drive_docker.tar.gz && \
    mv go-drive_docker/* . && \
    rmdir go-drive_docker && \
    mkdir data && \
    sed 's/data-dir: .\//data-dir: \/app\/data/; s/web-dir: .\/web/web-dir: \/app\/web/; s/lang-dir: .\/lang/lang-dir: \/app\/lang/' -i config.yml

ENTRYPOINT ["/app/go-drive", "-c", "/app/config.yml"]

EXPOSE 8089
