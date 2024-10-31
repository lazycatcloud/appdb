FROM registry.lazycat.cloud/nabo.codimd.dev/hackmdio/hackmd:2.5.4_amd64

USER root

RUN sed -i s/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list
RUN rm /etc/apt/sources.list.d/pgdg.list
RUN apt update
RUN apt install -y phantomjs
RUN cp /usr/lib/phantomjs/phantomjs /home/hackmd/app/node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs

USER hackmd