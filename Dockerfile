FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install libevent-dev git make build-essential sudo gawk automake valgrind vim scons libevent-dev gengetopt g++-4.8 -y
WORKDIR /src
