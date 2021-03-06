#!/bin/bash
echo "Starting app."
set -e

if [ "$ENV" = 'Development' ]; then
    echo "Running Development Server" 
    cd /srv/app/current && php -S 0.0.0.0:8000 index.php
elif [ "$ENV" = 'UNIT' ]; then
    cd /srv/app/current && composer install
    php /srv/app/current/vendor/bin/phpspec run
elif [ "$ENV" = 'CONF' ]; then
    echo "Running CONF Server"
    cd /srv/app/current && composer install
else
    echo "Running Production Server"
    cd /srv/app/current && php -S 0.0.0.0:8000 index.php
fi

