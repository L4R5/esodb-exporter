FROM ubuntu:24.04
RUN apt-get update --fix-missing && apt-get -y upgrade
RUN apt-get -y install curl

ADD eso-to-prometheus /usr/bin

CMD [ "bash", "/usr/bin/eso-to-prometheus" ]

