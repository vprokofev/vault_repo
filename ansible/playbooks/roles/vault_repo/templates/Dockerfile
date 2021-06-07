FROM ubuntu:focal
MAINTAINER Vladimir Prokofev

RUN apt update && \
apt install apt-mirror -y && \
apt clean && \
mkdir /scripts && \
cp /var/spool/apt-mirror/var/*.sh /scripts/

CMD while true; do apt-mirror; echo "Sleeping for a week."; sleep 604800; done
