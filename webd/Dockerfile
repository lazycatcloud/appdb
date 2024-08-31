FROM ubuntu

RUN mkdir -p /webd /data
COPY ./webd/webd /webd/
COPY ./webd.conf /webd/webd.conf

VOLUME [ "/data" ]

CMD [ "/webd/webd", "-c", "/webd/webd.conf"]

EXPOSE 80
