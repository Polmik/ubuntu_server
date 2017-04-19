# start from base
FROM ubuntu:16.04

# install system-wide deps for python and node
RUN apt-get -yqq update
RUN apt-get -yqq install python-pip python-dev
RUN apt-get -yqq install nodejs npm
RUN apt-get -yqq install firefox
RUN apt-get -yqq install software-properties-common
RUN add-apt-repository ppa:ubuntu-desktop/ubuntu-make && apt-get -yqq update
RUN apt-get -yqq install ubuntu-make
RUN mkdir pycharm && umake ide pycharm /pycharm/
RUN apt-get install -y net-tools
RUN apt-get -y install sudo
RUN ln -s /usr/bin/nodejs /usr/bin/node


# expose port
EXPOSE 5000

