FROM php:7.0-fpm

RUN groupadd -r deploy && useradd -r -g deploy deploy

RUN apt-get update && apt-get install -y \
  unzip

#USER deploy
#RUN mkdir /home/deploy
WORKDIR /srv/app/current
COPY app /srv/app/current
COPY cmd.sh /

#install composer 
RUN cd /tmp &&  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" 
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer 
RUN php -r "unlink('composer-setup.php');"

EXPOSE 8000:8000

#RUN chown deploy /srv/app/current


#cmd ["php", "-S", "0.0.0.0:8000", "index.php"] 
cmd ["/cmd.sh"]

