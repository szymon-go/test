FROM php:7.0-fpm

RUN groupadd -r deploy && useradd -r -g deploy deploy
WORKDIR /srv/app/current
COPY app /srv/app/current
COPY cmd.sh /

EXPOSE 8000:8000
USER deploy

#cmd ["php", "-S", "0.0.0.0:8000", "index.php"] 
cmd ["/cmd.sh"]

