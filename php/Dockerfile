#Etape 1 : récuperer l'image php-fpm
FROM php:8.2-fpm as php-fpm 

# Definir le repertoire de travail
# creer le dossier && aller dans le dossier
WORKDIR /var/www/html

# Copier le fichier php, mon projet dans le container
COPY index.php .

EXPOSE 80