#!/usr/bin/env bash

set -e

PROJECT_BASE_PATH='/home/sanydge/Projects/python/api/src'

git pull
$PROJECT_BASE_PATH/env/bin/python manage.py migrate
$PROJECT_BASE_PATH/env/bin/python manage.py collectstatic --noinput
supervisorctl restart profiles_api

echo "DONE! :)"
