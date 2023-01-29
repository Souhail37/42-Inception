FROM debian:buster

RUN apt-get update && apt-get install nginx -y && apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=sismaili.1337.ma"

COPY ./conf/nginx.conf /etc/nginx/

# COPY ./tools/index.html /var/www/html

EXPOSE	443

CMD [ "nginx", "-g", "daemon off;" ]