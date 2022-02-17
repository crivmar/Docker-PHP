FROM debian:bullseye

MAINTAINER crivmar

RUN apt update && apt upgrade -y && apt install -y apache2 libapache2-mod-php php php-mysql mariadb-client

ADD bookmedik /var/www/html/

ADD orden.bash /usr/local/bin/

RUN chmod +x /usr/local/bin/orden.bash  && rm /var/www/html/index.html

ENTRYPOINT ["/usr/local/bin/orden.bash"]
