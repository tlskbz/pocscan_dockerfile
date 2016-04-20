#++++++++++++++++++++++++++++++++++++++
# Debian 8 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM pocscan/env:2.0 
MAINTAINER kbz 

COPY superenv.conf /etc/supervisor/conf.d/superenv.conf
COPY nginx_uwsgi /etc/nginx/sites-enabled/nginx_uwsgi 
COPY nginx.conf /etc/nginx/nginx.conf

COPY supervisord.conf /etc/supervisor/supervisord.conf


RUN apt-get install git -y
RUN git clone https://github.com/erevus-cn/pocscan.git /www/

COPY init.sh /tmp/init.sh
RUN chmod 777 /tmp/init.sh

COPY greenlet.py /usr/local/lib/python2.7/dist-packages/gevent/greenlet.py
EXPOSE 8000
ENTRYPOINT ["/etc/init.d/supervisor","start"]
