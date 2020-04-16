#!/bin/sh
echo "start django"

python manage.py migrate

pyagent run -c ./appdynamics.cfg -- gunicorn wsgi:application -w 8 -b '0.0.0.0:8000'

exec "$@"