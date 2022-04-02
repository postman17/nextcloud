FROM nextcloud:latest

WORKDIR /var/www/html

COPY ./scripts/custom-apps.sh /hooks/install/custom-apps.sh

RUN chmod u+x /hooks/install/custom-apps.sh

ENTRYPOINT ["/hooks/install/custom-apps.sh"]
CMD ["apache2-foreground"]
