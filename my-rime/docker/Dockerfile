FROM ubuntu:latest as builder
ENV LINK=https://ghproxy.com/https://github.com/LibreService/my_rime/releases/download/latest/my-rime-dist.zip
RUN apt update && apt install unzip wget -y && \
  mkdir /builder && \
  wget -O /builder/rime.zip ${LINK} && \
  unzip /builder/rime.zip -d /builder/my-rime

FROM nginx:latest
COPY --from=builder /builder/my-rime/my-rime-dist /usr/share/nginx/html
EXPOSE 80