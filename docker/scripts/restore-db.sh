#!/bin/bash
docker stop rails

docker run -i -t -v /app:/app --link postgres:db  --rm rails:latest bash -c "/setup_database.sh"

docker start rails