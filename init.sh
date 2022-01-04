#!/usr/bin/env bash
# Execute composer
# Rename .env
echo "Create .env"
docker exec -ti consumidor_microservice_php7 sh -c "cp .env.example .env"
docker exec -ti productor_microservice_php7 sh -c "cp .env.example .env"


echo "Install Composer"
docker exec -ti consumidor_microservice_php7 sh -c "composer install"
docker exec -ti productor_microservice_php7 sh -c "composer install"
