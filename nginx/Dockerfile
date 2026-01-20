# Etape 1 : nginx j'utilise cette version car ce sera une image figée sans mise à jour à faire bien pour les entreprise
FROM nginx:1.29 

# Copier la configuration nginx
COPY config/default.conf /etc/nginx/conf.d/default.conf

COPY --from=php-fpm /var/www/html /var/www/html


EXPOSE 86 

ENTRYPOINT ["nginx","-g","daemon off;"]