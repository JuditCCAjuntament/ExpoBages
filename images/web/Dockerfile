FROM eu.gcr.io/websmunicipals/base-web:v1

COPY apache2/default.conf /etc/apache2/sites-enabled/000-default.conf

COPY --chown=www-data:www-data wwwroot/webs/festadelallum /var/www/html/web/webs/festadelallum

RUN ln -s /var/www/html/web/webs/default /var/www/html/web/assets-default

RUN ln -s /var/www/html/web /var/www/html/festadelallum
RUN ln -s /var/www/html/web/webs/festadelallum /var/www/html/web/assets


ENV APACHE_LOG_DIR=/var/log/apache2$SUFFIX
