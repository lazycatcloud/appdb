# https://www.mrdoc.fun/doc/18/
# https://gitee.com/zmister/MrDoc
# https://github.com/Jonnyan404/mrdoc-docker/blob/master/files/mrdoc.sh

FROM jonnyan404/mrdoc-alpine:latest

ENV MM=admin

VOLUME [ "/app/MrDoc/media", "/app/MrDoc/config" ]

EXPOSE 10086

ENTRYPOINT ["/bin/sh", "-c", "sh /app/mrdoc.sh"]