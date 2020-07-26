#!/bin/bash

if [ -z "$NODESVCA_1" ] 
then
  echo "NODESVCA_1 is not set"
else
  echo "killing $NODESVCA_1"
  docker kill $NODESVCA_1
  unset NODESVC1
  
fi

docker run -d -p 8081:3000 charlestbetz/node-svc-a
docker ps
export NODESVCA_1=$(docker ps -a | awk 'FNR == 2 {print $NF}') 
echo "exported" $NODESVCA_1 'to $NODESVCA_1'
echo "to kill, 'docker kill $NODESVCA_1'"


