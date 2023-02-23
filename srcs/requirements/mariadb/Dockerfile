FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/mariadb.sh /tmp

RUN chmod +x /tmp/mariadb.sh

RUN /tmp/mariadb.sh

EXPOSE 3306

CMD [ "mysqld" ]

