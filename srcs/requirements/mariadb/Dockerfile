FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/mariadb.sh /tmp/mariadb.sh

RUN chmod +x /tmp/mariadb.sh

EXPOSE 3306

RUN /tmp/mariadb.sh >> error.txt

# ENTRYPOINT [ "/tmp/mariadb.sh" ]

CMD [ "mysqld" ]
