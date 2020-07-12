#!/bin/bash

docker run -d -p 8080:3000 charlestbetz/node-svc
docker ps

echo "to kill, docker kill the container that was just added (reference friendly name)"

 
