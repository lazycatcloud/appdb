# docker-compose up
# docker-compose down -v
FROM wordpress:6.4.2-php8.2-apache
# FROM wordpress:6.4.2-php8.3-fpm-alpine
# TODO: 使用wordpress中的 alpine镜像以求镜像最小化，可是短时间内，未能启动好 apache 服务，暂时使用 apache

# Pm ondemand to save RAM
# RUN sed -i 's/pm = dynamic/pm = ondemand/g' /usr/local/etc/php-fpm.d/www.conf

RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
RUN apt-get update && \
    apt-get install -y curl unzip wget

RUN cd /usr/src/ && \
    rm -rf wordpress && \
    wget -c https://cn.wordpress.org/latest-zh_CN.zip && \
    unzip latest-zh_CN.zip && \
    rm -f latest-zh_CN.zip

# Sqlite integration plugin
# https://downloads.wordpress.org/plugin/sqlite-database-integration.zip
# RUN cp /usr/src/wordpress/wp-content/plugins/sqlite-database-integration/db.copy /usr/src/wordpress/wp-content/db.php
# ALL IN lzc_conf


COPY --chown=www-data:www-data lzc_conf /lzc_conf
COPY lzc_conf/lzc-entrypoint.sh /usr/local/bin/
# https://github.com/wp-cli/wp-cli/releases/download/v2.9.0/wp-cli-2.9.0.phar
COPY lzc_conf/wp-cli-2.9.0.phar /usr/local/bin/wp
RUN chmod +x /usr/local/bin/wp

# Check that the homepage is displayed
HEALTHCHECK --interval=2s --timeout=60s \
  CMD curl -f http://localhost/ || exit 1

ENTRYPOINT ["lzc-entrypoint.sh"]
CMD ["apache2-foreground"]
