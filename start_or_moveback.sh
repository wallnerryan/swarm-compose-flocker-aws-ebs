docker-compose -f compose-moved.yml kill
echo 'y' | docker-compose -f compose-moved.yml rm
docker-compose -f compose.yml up -d
