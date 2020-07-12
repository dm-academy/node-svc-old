#!/bin/bash
!
curl localhost:8080
echo

echo "requesting with parameter 1"
echo
curl -d 1 localhost:8080

echo "posting with parameter 1"
echo
curl --request POST localhost:8080 -d 1
echo

