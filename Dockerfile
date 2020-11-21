FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install libevent-dev git make build-essential sudo gawk automake valgrind vim scons libevent-dev gengetopt -y
ARG GID
ARG UID
RUN groupadd -g ${GID} group
RUN useradd -m -u ${UID} -g group user
WORKDIR /src
RUN chown user:group -R /src
RUN apt-get install g++-4.8 -y
USER user
