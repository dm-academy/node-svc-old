#!/bin/bash

if [ -z "$NODESVC1" ] 
then
  echo "NODESVC1 is not set"
else
  echo "killing $NODESVC1"
  docker kill $NODESVC1
  unset NODESVC1
  
fi

docker run -d -p 8080:3000 charlestbetz/node-svc
docker ps
export NODESVC1=$(docker ps -a | awk 'FNR == 2 {print $NF}') 
echo "exported" $NODESVC1 'to $NODESVC1'
echo "to kill, 'docker kill $NODESVC1'"


