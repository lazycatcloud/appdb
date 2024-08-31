FROM mariadb:10.8

SHELL ["/bin/bash", "-c"]
RUN apt update
RUN apt install curl -y
RUN curl https://nodejs.org/dist/v14.17.3/node-v14.17.3-linux-x64.tar.xz -o /opt/node-14.tar.xz
RUN cd /usr/local/lib/ && tar xvf /opt/node-14.tar.xz
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/node /usr/local/bin/
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/npm /usr/local/bin/
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/npx /usr/local/bin/
#RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
#RUN nvm install 14.17.3
RUN npm install -g pm2@5.2.2
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/pm2 /usr/local/bin/
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/pm2-runtime /usr/local/bin/
RUN ln -s /usr/local/lib/node-v14.17.3-linux-x64/bin/pm2-docker /usr/local/bin/

RUN apt install redis-server nginx cron mariadb-plugin-mroonga -y

COPY --from=wiznote/wizserver:latest /wiz /wiz
COPY ./wiz /wiz
RUN chown root:root /wiz
COPY ./entry.sh /
ENTRYPOINT /entry.sh 
