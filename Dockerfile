FROM ubuntu:20.04

RUN apt-get update && apt-get install -y curl libogg0 openssl gettext-base

RUN curl -sLO https://www.rocketbroadcaster.com/streaming-audio-server/downloads/ubuntu-20.04/rsas_0.1.18-1_amd64.deb
RUN dpkg -i *.deb

COPY old.xml .
COPY start.sh .

CMD ["./start.sh"]

EXPOSE 8001

