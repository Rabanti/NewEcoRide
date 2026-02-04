#Etape 1 : récuperer l'image php-fpm
FROM php:8.2-fpm as php-fpm 

# Definir le repertoire de travail
# creer le dossier && aller dans le dossier
WORKDIR /var/www/html

# Copier le fichier php, mon projet dans le container
COPY index.php .

# Etape 2 : nginx j'utilise cette version car ce sera une image figée sans mise à jour à faire bien pour les entreprise
FROM nginx:1.29 

# Copier la configuration nginx
COPY config/default.conf /etc/nginx/conf.d/default.conf

COPY --from=php-fpm /var/www/html /var/www/html

EXPOSE 86

ENTRYPOINT ["nginx","-g","daemon off;"] 