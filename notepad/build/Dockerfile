FROM ubuntu:jammy-20230624

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai apt install -y tzdata supervisor apache2 php-fpm && apt autoclean && rm -rf /var/lib/apt/lists/
RUN a2enconf php8.1-fpm \
    && a2enmod proxy \
    && a2enmod proxy_fcgi \
    && a2enmod rewrite

COPY ./config/apache/000-default.conf /etc/apache2/sites-available/000-default.conf

COPY ./config/supervisord/supervisord.conf /etc/supervisor/supervisord.conf
COPY ./config/supervisord/conf.d/ /etc/supervisor/conf.d/

COPY ./start.sh /start.sh
RUN chmod 755 /start.sh

COPY ./src /var/www/html 
RUN rm /var/www/html/index.html
RUN chown -R www-data:www-data /var/www/html/

RUN touch /var/log/php8.1-fpm.log && chown www-data:www-data /var/log/php8.1-fpm.log

RUN 
EXPOSE 80
CMD ["/bin/bash", "/start.sh"]