FROM ubuntu:focal
MAINTAINER Vladimir Prokofev

RUN apt update && \
apt install apt-mirror rsync -y && \
apt clean && \
mkdir /scripts

ADD postmirror.sh /scripts/

CMD while true; do apt-mirror; echo "Sleeping for a week."; sleep 604800; done
