#!/bin/sh
echo "start django"

python manage.py migrate

exec "$@"