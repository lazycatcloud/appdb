FROM registry.lazycat.cloud/yanknote:base-image

RUN apt update
RUN apt install qbittorrent -y

COPY ./passwd /root/.vnc/passwd
RUN chmod 600 /root/.vnc/passwd
COPY ./qBittorrent.conf /
COPY ./entry.sh /
COPY ./start.sh /

ENTRYPOINT ["/entry.sh"]
