FROM debian:stable-20240701-slim

WORKDIR /tmp

EXPOSE 80/tcp

RUN apt-get update && \
    apt install wget -y && \
    wget https://wordpress.org/latest.tar.gz && \
    tar -xvf latest.tar.gz && \
    mkdir /var/www && mkdir /var/www/html &&\
    cp -R wordpress /var/www/html/ && \
    chown -R www-data:www-data /var/www/html/wordpress/ && \
    chmod -R 755 /var/www/html/wordpress/ && \
    mkdir /var/www/html/wordpress/wp-content/uploads && \
    chown -R www-data:www-data /var/www/html/wordpress/wp-content/uploads/

