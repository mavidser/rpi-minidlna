FROM resin/rpi-raspbian:stretch-20180411
LABEL maintainer="Sid Verma <me@sidverma.io>"

RUN apt-get update

RUN apt-get install minidlna

# Add config file
ADD minidlna.conf /etc/minidlna.conf

EXPOSE 1900/udp
EXPOSE 8200

ENTRYPOINT [ "/usr/sbin/minidlnad", "-S" ]
