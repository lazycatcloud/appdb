FROM registry.lazycat.cloud/appdb/omnivore-base:v0.0.1

RUN apk add --no-cache multirun

WORKDIR /opt/omnivore

COPY ./ ./
RUN chmod +x entrypoint.sh start_web.sh start_api.sh \
        start_contentfetch.sh start_rulehandler.sh

CMD [ "./entrypoint.sh" ]
