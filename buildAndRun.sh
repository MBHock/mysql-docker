#!/bin/bash

#rm -rfv data && mkdir data
#docker rmi -f ocmp-mysql-db
docker rm -f mysql

docker build -t ocmp-mysql-db .
docker run --name mysql -e MYSQL_HOST=localhost -e MYSQL_ROOT_PASSWORD=mysql -p3306:3306 docker.io/library/ocmp-mysql-db
#--network my-net
#mysqldump --column-statistics=0 -u abladmin -h 94.130.9.139 -p Abl1337blA -P 3306 -c -K -f -v --databases stg > /Users/mojammalhock/Downloads/dump_stg.sql