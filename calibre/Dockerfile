FROM registry.lazycat.cloud/crocodilestick/calibre-web-automated:v2.0.1

ENV DOCKER_MODS=lscr.io/linuxserver/mods:universal-calibre-v7.16.0
ENV http_proxy=http://192.168.1.128:1085
ENV https_proxy=http://192.168.1.128:1085

COPY ./docker_build_files/docker-mods /docker-mods-build
COPY ./docker_build_files/mod-repo-packages-to-install.list /
RUN bash -x /docker-mods-build
RUN sed -i s/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g /etc/apt/sources.list
RUN bash -x /etc/s6-overlay/s6-rc.d/init-mods-package-install/run

ENV http_proxy=
ENV https_proxy=
ENV DOCKER_MODS=