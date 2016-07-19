#!/bin/bash
cp /tmp/common.pyc /www/pocscan/plugins/bugscan/dummy/common.pyc
cd /www/ && python /www/manage.py makemigrations
cd /www/ &&  python /www/manage.py migrate --noinput

chmod -R 777 /www 
echo "root:password"|chpasswd

echo "from django.contrib.auth.models import User; User.objects.create_superuser('root', 'admin@example.com', 'password')" | python /www/manage.py shell
