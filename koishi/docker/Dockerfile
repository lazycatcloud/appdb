FROM alpine
COPY ./setup.sh /setup.sh
RUN sh /setup.sh

FROM node:16-buster-slim
COPY ./mirror.sh /_m.sh
RUN sh /_m.sh
COPY --from=0 /boilerplate.zip /boilerplate.zip
COPY ./entrypoint.sh /
RUN apt-get update && \
    apt-get install -y chromium \
    libnss3-tools \
    libcurl3-nss \
    libnss3 \
    # nss \
    # freetype \
    libfreetype6 \
    libharfbuzz0b \
    libharfbuzz-bin \
    libharfbuzz-dev \
    ca-certificates \
    # ttf-freefont \
    fonts-freefont-ttf \
    xfonts-utils \
    # font-noto-cjk \
    fonts-noto-cjk-extra \
    zip \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt-get/lists/
# RUN npm install -g yarn@berry
# RUN yarn set version berry --registry=https://registry.npmmirror.com
VOLUME ["/koishi"]
WORKDIR "/koishi"
EXPOSE 5140
ENTRYPOINT [ "sh", "/entrypoint.sh"]
CMD ["yarn", "start"]