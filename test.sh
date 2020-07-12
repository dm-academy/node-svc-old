#!/bin/bash

echo 
echo "#############################"
echo "test script executing default curl localhost:8080"
curl localhost:8080
echo

echo "test script requesting with parameter 1"
echo
curl -d 1 localhost:8080
echo
echo "test script posting with parameter 1"
echo
curl -d "1" -X POST localhost:8080 
echo
echo
echo "#############################"
echo
