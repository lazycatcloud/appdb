FROM lscr.io/linuxserver/sonarr:latest

RUN apt update && apt install aria2 unzip -y
RUN apt autoclean

COPY ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]
