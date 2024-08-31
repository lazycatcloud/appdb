FROM node:lts-bullseye as frontend

COPY ./frontend /frontend
WORKDIR /frontend
RUN ./script/bootstrap
RUN ./script/build_frontend

FROM ghcr.io/home-assistant/home-assistant:stable as ha

FROM python:3.11.5-slim-bullseye

RUN apt update && apt install -y git

COPY ./core /homeassistant

WORKDIR /homeassistant

RUN ./script/setup

RUN apt install -y gcc autoconf libpcap-dev libssl-dev libxml2-dev libxslt1-dev libjpeg-dev libffi-dev libudev-dev zlib1g-dev pkg-config libavformat-dev libavcodec-dev libavdevice-dev libavutil-dev libswscale-dev libavresample-dev libavfilter-dev ffmpeg

RUN ["bash", "-c",  "source ./venv/bin/activate && hass -s"]
RUN rm -rf /homeassistant/venv/lib/python3.11/site-packages/hass_frontend
COPY --from=frontend /frontend/hass_frontend /homeassistant/venv/lib/python3.11/site-packages/hass_frontend

COPY ./start.sh /
RUN chmod +x /start.sh
COPY ./configuration.yaml /
COPY ./automations.yaml /

#RUN rm -rf /homeassistant/venv/lib/python3.11/site-packages/hass_frontend/static/translations 
#COPY --from=ha /usr/local/lib/python3.11/site-packages/hass_frontend/static/translations /homeassistant/venv/lib/python3.11/site-packages/hass_frontend/static/translations

ENTRYPOINT ["/start.sh"]
