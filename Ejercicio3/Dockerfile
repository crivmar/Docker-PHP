FROM php:7.4-apache-bullseye

MAINTAINER crivmar

RUN apt update && apt upgrade -y && docker-php-ext-install mysqli pdo pdo_mysql && apt install -y mariadb-client && apt clean && rm -rf /var/lib/apt/lists/*

ADD bookmedik /var/www/html/

ADD orden.bash /usr/local/bin/

RUN chmod +x /usr/local/bin/orden.bash

ENTRYPOINT ["/usr/local/bin/orden.bash"]
