# docker build -t registry.lazycat.cloud/memos:0.11.2.1 .
FROM ubuntu:latest
WORKDIR /usr/local/memos
# RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh \
#   && apt install -y sqlite3
# RUN sh -c '/bin/echo -e ".databases\n.quit" | sqlite3 /var/www/html/database/data.db'
# RUN chown www-data:www-data /var/www/html/database/data.db
RUN mkdir -p /var/opt/memos
ADD ./bin/memos /usr/local/memos/memos

ENTRYPOINT ["./memos", "--mode", "prod", "--port", "5230"]