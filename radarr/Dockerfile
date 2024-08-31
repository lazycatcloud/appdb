FROM lscr.io/linuxserver/radarr:latest

RUN apk add aria2

COPY ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]
