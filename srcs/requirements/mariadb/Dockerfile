FROM debian:buster

RUN apt-get update && apt-get install mariadb-server -y

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

EXPOSE 3306

ENTRYPOINT [ "/tmp/script.sh" ]

CMD [ "mysqld" ]