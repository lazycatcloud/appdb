# 此处的 PHP 版本是项目要求的
FROM php:7.4-apache-bullseye

RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
# 安装依赖库和扩展
RUN apt-get update \
    && apt-get install -y wget unzip libpng-dev libjpeg-dev libxml2-dev libzip-dev \
    && docker-php-ext-install gd mysqli pdo_mysql soap zip \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
    && apt-get install -y sqlite3 libsqlite3-dev libonig-dev \
    && docker-php-ext-install mbstring pdo_sqlite \
    && rm -rf /var/lib/apt/lists/*

COPY srv /var/www/html
RUN chown -Rf www-data:www-data /var/www/html

COPY docker-php-entry.sh /usr/local/bin/docker-php-entrypoint

# 启用 Apache rewrite 模块
RUN a2enmod rewrite

# 暴露端口
EXPOSE 80
