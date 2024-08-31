FROM ubuntu:latest as builder
ENV LINK=https://ghproxy.com/https://github.com/ciaochaos/qrbtf/releases/download/v1.3/build.zip
RUN apt update && apt install unzip wget -y && \
  mkdir /builder && \
  wget -O /builder/build.zip ${LINK} && \
  unzip /builder/build.zip -d /builder/build

FROM nginx:latest
COPY --from=builder /builder/build/build /usr/share/nginx/html
EXPOSE 80
