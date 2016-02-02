#!/bin/bash
python /www/manage.py collectstatic --noinput
python /www/manage.py syncdb --noinput
python /www/manage.py makemigrations
python /www/manage.py migrate --noinput


echo "from django.contrib.auth.models import User; User.objects.create_superuser('root', 'admin@example.com', 'password')" | python /www/manage.py shell
