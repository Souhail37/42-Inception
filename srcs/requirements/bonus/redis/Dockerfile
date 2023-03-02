FROM debian:buster

RUN apt-get update && apt-get install redis-server -y && apt-get install php-redis -y

COPY ./tools/redis.sh /tmp

RUN chmod +x /tmp/redis.sh

RUN /tmp/redis.sh

RUN service redis-server restart

EXPOSE 6379

CMD [ "redis-server"]