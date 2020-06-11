FROM debian:buster AS core

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        curl \
    && apt-get autoremove \
    && apt-get clean

RUN echo 'deb http://deb.debian.org/debian unstable main' > /etc/apt/sources.list.d/unstable.list \
  && apt update \
  && apt install -y openjdk-8-jdk

RUN curl -L https://piccolo.link/sbt-1.3.4.tgz -o /tmp/sbt.tgz \
  && cd /opt \
  && tar xvfz /tmp/sbt.tgz \
  && ln -s /opt/sbt/bin/sbt /usr/local/bin/sbt \
  && sbt --version

WORKDIR /app
