#!/bin/bash

# Damos un tiempo para que se creen los contenedores

sleep 30

mysql -u $USUARIO --password=$PASS -h $HOST $BD < /usr/share/nginx/html/schema.sql

# Directiva (-g) para que nginx se ejecute en primer plano

nginx -g "daemon off;"
