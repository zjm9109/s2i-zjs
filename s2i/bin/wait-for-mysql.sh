#!/bin/bash

echo "Waiting for mysql"
until mysql -h"$MYSQL_HOST" -P"$MYSQL_PORT" -uroot -p"$MYSQL_ROOT_PASSWORD" &> /dev/null; do
    printf "."
    sleep 1
done

echo -e "\nmysql ready"
