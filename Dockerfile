FROM nextcloud:latest


WORKDIR /var/www/html

ARG NEXTCLOUD_CUSTOM_APPS

COPY ./install-apps.sh /
COPY ./wait-for-it.sh /

RUN chmod u+x /install-apps.sh
RUN chmod u+x /wait-for-it.sh
RUN chsh -s /bin/bash www-data
