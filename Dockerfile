FROM fsharp

MAINTAINER Las-Wonho haho6629@gmail.com

RUN apt-get update\
  && apt-get install -y wget

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:wine/wine-builds

RUN apt-get update

RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install --no-install-recommends --assume-yes wine

RUN apt-get update

WORKDIR .

EXPOSE 4567

VOLUME 6644
