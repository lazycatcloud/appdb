FROM registry.lazycat.cloud/immich-machine-learning:23.6.26

COPY ./ml-cache.tar /ml-cache.tar
COPY ./start.sh /usr/src/app/start.sh

ENTRYPOINT ["bash", "start.sh"]
