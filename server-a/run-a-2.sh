#!/bin/bash

if [ -z "$NODESVCA_2" ] 
then
  echo "NODESVCA_2 is not set"
else
  echo "killing $NODESVCA_2"
  docker kill $NODESVCA_2
  unset NODESVC1
  
fi

docker run -d -p 8082:3000 charlestbetz/node-svc-a
docker ps
export NODESVCA_2=$(docker ps -a | awk 'FNR == 2 {print $NF}') 
echo "exported" $NODESVCA_2 'to $NODESVCA_2'
echo "to kill, 'docker kill $NODESVCA_2'"


