#!/bin/bash

if [ -z "$NODESVC2" ] 
then
  echo "NODESVC2 is not set"
else
  echo "killing $NODESVC2"
  docker kill $NODESVC2
  unset NODESVC2
  
fi

docker run -d -p 8082:3000 charlestbetz/node-svc
docker ps
export NODESVC2=$(docker ps -a | awk 'FNR == 2 {print $NF}') 
echo "exported" $NODESVC2 'to $NODESVC1'
echo "to kill, 'docker kill $NODESVC2'"


