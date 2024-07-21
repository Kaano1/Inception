FROM debian:stable-20240701-slim

RUN apt-get update && \
    apt-get install -y mariadb-server

EXPOSE 3306

CMD ["mysqld_safe"]
