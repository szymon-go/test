#!/bin/bash
echo "Starting app."
set -e

if [ "$ENV" = 'Development' ]; then
    echo "Running Development Server" 
    cd /srv/app/current && php -S 0.0.0.0:8000 index.php
elif [ "$ENV" = 'UNIT' ]; then
    php ./vendor/bin/phpspec run
else
    echo "Running Production Server"
    cd /srv/app/current && php -S 0.0.0.0:8000 index.php
fi

