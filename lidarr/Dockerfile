FROM debian:bookworm-slim

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/debian.sources && \
    apt-get update && \
    apt-get install -y libicu-dev libssl3 libgdiplus libsqlite3-0 ca-certificates && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/Lidarr
COPY /_output/net6.0/linux-x64/ ./
COPY /_output/UI ./UI

EXPOSE 8686

CMD [ "./Lidarr", "/nobrowser", "/data=/lzcapp/var" ]
