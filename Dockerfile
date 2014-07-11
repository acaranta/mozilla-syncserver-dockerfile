# VERSION 0.1
# DESCRIPTION:    mozilla syncserver conatiner
# TO_BUILD:       docker build -rm -t synserver .
# TO_RUN:         docker run -p 5000:5000 syncserver

FROM ubuntu:14.04
MAINTAINER Arthur Caranta "arthur+code.mozillasyncdocker@caranta.com"


RUN apt-get -y update
RUN apt-get install -y git build-essential python-virtualenv python2.7-dev

RUN git clone https://github.com/mozilla-services/syncserver.git 
RUN cd syncserver && make build

EXPOSE 5000

CMD cd syncserver && make serve
