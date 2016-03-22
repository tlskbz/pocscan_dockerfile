#++++++++++++++++++++++++++++++++++++++
# Debian 8 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM ubuntu/env:1.0 
MAINTAINER kbz 

COPY superenv.conf /etc/supervisor/conf.d/superenv.conf
COPY nginx_uwsgi /etc/nginx/sites-enabled/nginx_uwsgi 

COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY init.sh /tmp/init.sh
RUN chmod 777 /tmp/init.sh

COPY greenlet.py /usr/local/lib/python2.7/dist-packages/gevent/greenlet.py

RUN apt-get update
RUN apt-get install libssl-dev libffi-dev -y
RUN /usr/bin/pip install cryptography butterfly

ENTRYPOINT ["/etc/init.d/supervisor","start"]
