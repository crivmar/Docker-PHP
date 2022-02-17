#!/bin/bash

sleep 30

mysql -u $USUARIO --password=$PASS -h $HOST $BD < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
