#!/bin/sh
echo "start django"

python manage.py migrate

gunicorn wsgi:application --bind 0.0.0.0:8000

exec "$@"