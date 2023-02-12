#!/bin/bash

# stop running containers
[ "$(docker ps -a | grep mongodb)" ] && docker stop mongodb
[ "$(docker ps -a | grep goals-backend)" ] && docker stop goals-backend
[ "$(docker ps -a | grep goals-frontend)" ] && docker stop goals-frontend

# rebuild front-end and back-end images
( cd backend/ ; docker build -t goals-node . )
( cd frontend/ ; docker build -t goals-react . )

#create containers
docker run --name mongodb \
    -v data:/data/db \
    --rm -d \
    --network goals-net \
    -e MONGO_INITDB_ROOT_USERNAME=root \
    -e MONGO_INITDB_ROOT_PASSWORD=puffin \
    mongo

docker run --name goals-backend \
    --rm -d \
    -p 80:80 \
    --network goals-net \
    goals-node

docker run --name goals-frontend \
    --rm \
    -p 3000:3000 \
    -it goals-react

