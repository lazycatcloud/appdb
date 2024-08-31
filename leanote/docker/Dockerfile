# docker build -t registry.lazycat.cloud/leanote-base:2.6.1 .
FROM golang:1.18-bullseye as build

RUN go install github.com/revel/cmd/revel@latest && revel version

COPY ./src /root/leanote 
WORKDIR /root/leanote
RUN revel build -a /root/leanote/ -t /root/target/ -m prod

#ADD run.sh /root/
# download leanote
# RUN set -ex; \
    # wget http://static.axboy.cn/leanote/leanote-linux-amd64-v2.6.1.bin.tar.gz -O /root/leanote.tar.gz; \
    # tar -xzf /root/leanote.tar.gz -C /root/ ;\
    # rm -f /root/leanote.tar.gz ;\
    # chmod a+x /root/run.sh ;\
    # chmod a+x /root/leanote/bin/run.sh ;\
    # echo 'export QT_QPA_PLATFORM=offscreen' >> ~/.bashrc ;\
FROM golang:1.18-bullseye

COPY --from=build /root/target /root/app
RUN apt update && apt install wkhtmltopdf fonts-noto-cjk -y && apt autoclean && ln -s /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf
EXPOSE 9000 
# CMD ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && /bin/bash /root/run.sh
# CMD /bin/bash /root/run.sh
WORKDIR /root/app
ENTRYPOINT ["./run.sh"]
