# docker build -t leehom/leanote-base:20230308 .
# docker tag leehom/leanote-base:20230308 registry.lazycat.cloud/leanote-base:20230308 .
FROM mongo:4.2.7-bionic
ENV TZ=Asia/Shanghai
RUN set -ex; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime ;\
    echo $TZ > /etc/timezone; \
    apt-get update; \
    apt-get install -y --no-install-recommends wget tar vim libssl1.0-dev; \
    rm -rf /var/lib/apt/lists/*;
# set chinese mirror
RUN wget https://gitee.com/clh21/sh/raw/master/mirror.sh && sh ./mirror.sh; rm -f mirror.sh
# install font
RUN set -ex; \
    apt-get update; \
    apt-get install -y xvfb libXrender* libfontconfig*; \
    apt-get install -y \
        fonts-arphic-bkai00mp \
        fonts-arphic-bsmi00lp \
        fonts-arphic-gbsn00lp \
        fonts-arphic-gkai00mp \
        fonts-arphic-ukai \
        fonts-arphic-uming \
        ttf-wqy-zenhei \
        ttf-wqy-microhei \
        xfonts-wqy; \
    rm -rf /var/lib/apt/lists/*;
COPY ./wkhtmltox-0.12.4_linux-generic-amd64.tar.xz .
# download wkhtmltopdf
# RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz; \
RUN tar -xvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz;
RUN cp wkhtmltox/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf; \
    chmod +x /usr/local/bin/wkhtmltopdf; \
    rm -rf wkhtmltox wkhtmltox-0.12.4_linux-generic-amd64.tar.xz ;