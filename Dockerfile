FROM php:fpm-alpine

RUN apk update && apk upgrade
RUN apk --nocache add libmcrypt libmcrypt-dev
RUN docker-php-ext-install \
      mcrypt \
      pdo_mysql
RUN apk del libmcrypt-dev

