FROM ubuntu:16.04

RUN \
 apt-get update && \
 apt-get install -y apache2 apache2-utils && \
 apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-mysql 
 php-common php7.0-cli php7.0-common php7.0-json php7.0-opcache 
 php7.0-readline

COPY miweb /var/www/html/miweb

CMD apachectl -DFOREGROUND
