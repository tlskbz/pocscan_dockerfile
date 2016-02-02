#++++++++++++++++++++++++++++++++++++++
# Debian 8 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM ubuntu:latest 
MAINTAINER kbz 

# Copy requirements.txt 
COPY soulist /etc/apt/sources.list
COPY requirements.txt /tmp/requirements.txt
# Install python,pip,nginx,supervisor,python-dev
RUN apt-get update
RUN apt-get install -y python python-dev nginx supervisor python-pip python-mysqldb  

RUN apt-get install -y libmysqld-dev

RUN apt-get install -y rabbitmq-server

RUN apt-get purge -y supervisor
RUN apt-get install -y supervisor

RUN /usr/bin/pip install uwsgi
RUN /usr/bin/pip install suit
RUN mkdir /www

# Install extera with pip
RUN /usr/bin/pip install -r /tmp/requirements.txt 


