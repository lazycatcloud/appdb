FROM registry.lazycat.cloud/lanraragi:base-image

COPY ./entry.sh /
COPY ./src /LANraragi
WORKDIR /LANraragi

RUN cp /LANraragi/tools/build/docker/redis.conf /etc/redis/redis.conf
RUN chmod 640 /etc/redis/redis.conf
RUN chown root:root /etc/redis/redis.conf

RUN npm run lanraragi-installer install-full
EXPOSE 3000/tcp
ENTRYPOINT /entry.sh
