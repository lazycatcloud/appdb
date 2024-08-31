FROM python:3.10-alpine3.18

WORKDIR /opt/deluge

COPY requirements.txt ./
RUN set -ex; \
    pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/; \
    pip3 install -r requirements.txt;

COPY ./ ./
RUN set -ex; \
    echo '2.1.1' > RELEASE-VERSION; \
    python3 setup.py build; \
    python3 setup.py install;

WORKDIR /opts
COPY start.sh ./
RUN set -ex; \
    rm -rf ./deluge;

CMD [ "./start.sh" ]
