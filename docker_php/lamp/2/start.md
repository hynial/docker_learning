https://github.com/fauria/docker-lamp

docker pull fauria/lamp
docker run --rm -p 8080:80 -e LOG_STDOUT=true -e LOG_STDERR=true -e LOG_LEVEL=debug -v /my/data/directory:/var/www/html fauria/lamp
