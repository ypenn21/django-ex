#!/bin/sh
echo "start django"

python manage.py migrate

python manage.py runserver

exec "$@"