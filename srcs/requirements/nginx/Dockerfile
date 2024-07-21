FROM debian:stable-20240701-slim

#auther
LABEL myowner="kaan"

RUN apt-get update && \
    apt install systemctl -y && \
    apt install nginx -y

EXPOSE 80/tcp

ENTRYPOINT ["systemctl", "start", "nginx"]
