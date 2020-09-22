FROM mysql/mysql-server:8.0

ENV MYSQL_USER=mysql
ENV MYSQL_PASSWORD=mysql
ENV MYSQL_ROOT_PASSWORD=mysql
ENV MYSQL_DATABASE=cmx
ENV MYSQL_HOST=localhost

COPY sql-scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306:3306