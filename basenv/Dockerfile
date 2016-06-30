#++++++++++++++++++++++++++++++++++++++
# Debian 8 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM ubuntu:latest 
MAINTAINER kbz 

# Copy requirements.txt 
COPY soulist /etc/apt/sources.list
COPY requirements.txt /tmp/requirements.txt
COPY pip.conf /root/.pip/pip.conf
COPY sqlmap /usr/share/sqlmap

RUN apt-get update
RUN apt-get install -y python python-dev nginx supervisor python-pip libssl-dev libffi-dev rabbitmq-server wget unzip

RUN /usr/bin/pip install -r /tmp/requirements.txt 

RUN /usr/bin/pip install uwsgi

RUN wget -P /tmp/ http://img.bugscan.net/bin/sdk.zip

RUN cd /tmp && unzip /tmp/sdk.zip && python setup.py install

RUN mkdir /www
