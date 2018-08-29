FROM ubuntu:16.04

MAINTAINER Las-Wonho haho6629@gmail.com

RUN apt-get update\
  && apt-get install -y wget

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update

RUN apt-get install -y esl-erlang

RUN apt-get install -y elixir

RUN apt-get install -y locales

RUN locale-gen "en_US.UTF-8"

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:wine/wine-builds

RUN apt-get update

RUN dpkg --add-architecture i386

RUN apt-get update

RUN apt-get install --no-install-recommends --assume-yes wine

RUN apt-get install -y fsharp

WORKDIR .

EXPOSE 4567

VOLUME 6644
