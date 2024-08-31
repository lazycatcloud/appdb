# 基于 PHP 7.3 和 Apache 镜像构建
FROM php:8.2.7-apache-bullseye

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

# 下载和解压 Typecho
COPY typecho-1.2.1.tar.gz .
# RUN wget https://github.com/typecho/typecho/releases/download/v1.1-17.10.30-release/1.1.17.10.30.-release.tar.gz \
RUN ls -lah \
    && tar -zxvf typecho-1.2.1.tar.gz \
    && rm typecho-1.2.1.tar.gz \
    && mv typecho-1.2.1/* /var/www/html/ \
    && chown -Rf www-data:www-data /var/www/html

# 复制 Typecho 配置文件
# COPY config.inc.php /var/www/html/

# 设置 Apache 网站根目录

# 启用 Apache rewrite 模块
RUN a2enmod rewrite

# 暴露端口
EXPOSE 80
