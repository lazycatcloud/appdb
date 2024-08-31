FROM php:7.4.33-zts-alpine3.16

WORKDIR /var/www/html

# 安装依赖
RUN curl -sSL https://gitee.com/clh21/sh/raw/master/mirror.sh | sh
# 安装依赖
RUN apk add --no-cache \
        unzip \
        libpng \
        libjpeg-turbo \
        freetype \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        libwebp-dev \
        libxpm-dev \
        libzip-dev && \
    rm -rf /var/cache/apk/*

# 安装 PHP 扩展并启用 GD 扩展
RUN docker-php-ext-configure gd \
        --with-freetype=/usr/include/ \
        --with-jpeg=/usr/include/ \
        --with-webp=/usr/include/ \
        --with-xpm=/usr/include/ && \
    docker-php-ext-install -j$(nproc) \
        pdo_mysql \
        mysqli \
        gd \
        zip

# 下载 KodExplorer
COPY KodExplorer-4.51.03.zip kodexplorer.zip

# 解压 KodExplorer
RUN unzip kodexplorer.zip && \
    rm kodexplorer.zip && \
    mv KodExplorer-*/* . && \
    rm -rf KodExplorer-*/

# 设置文件夹权限
RUN chmod -R 777 ./ && \
    chown -R www-data:www-data ./

EXPOSE 80
CMD [ "php", "-S", "0000:80", "-t", "/var/www/html" ]