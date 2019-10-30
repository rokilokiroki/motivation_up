FROM php:7.3.2-fpm-alpine

ADD ./www.conf /etc/php-fpm/www.conf

# install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN composer config -g repos.packagist composer https://packagist.jp
RUN composer global require hirak/prestissimo

# install required libraries
RUN apk update
RUN apk add --no-cache alpine-sdk autoconf automake libc6-compat libpng libpng-dev libjpeg-turbo-utils libzip libzip-dev tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# install required tools
RUN apk --no-cache add npm

#install php extensions
RUN docker-php-ext-install pdo_mysql gd zip

RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

WORKDIR /var/www/test/
