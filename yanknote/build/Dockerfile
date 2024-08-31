FROM registry.lazycat.cloud/yanknote:base-image

RUN wget "https://caddyserver.com/api/download?os=linux&arch=amd64" -O /usr/bin/caddy
RUN chmod +x /usr/bin/caddy

RUN mkdir /home/node/.vnc
COPY ./passwd /home/node/.vnc/passwd
COPY ./entry.sh /home/node/
COPY ./start_yank.sh /home/node/
COPY ./yn /home/node/yn
RUN chown -R node:node /home/node

USER node

# WORKDIR /home/node
# RUN git clone --depth=1 https://github.com/purocean/yn.git

WORKDIR /home/node/yn
RUN yarn install
RUN npm config set electron_mirror http://npm.taobao.org/mirrors/electron/
RUN npm config set electron_custom_dir "16.0.0"
RUN npm install electron@16.0.0 --force
RUN npm install --save-dev electron-rebuild --force
RUN npm run rebuild-pty
RUN npm run build:fe
RUN npm run build:main

EXPOSE 3044/tcp
EXPOSE 8066/tcp
EXPOSE 8888/tcp
EXPOSE 5901/tcp
WORKDIR /home/node
USER root
ENTRYPOINT /home/node/entry.sh
