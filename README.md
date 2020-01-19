# Node.js microservice

Simple REST API microservice proof of concept, built with Node.js, in Docker container.
Built by Landon with the help of Dan Wang (https://github.com/rmdanwang).

Used the following guide as a starting point but some of the information seemed outdated or incorrect: 
https://levelup.gitconnected.com/create-a-dockerfile-for-nodejs-applications-7310c298daee

This tutorial was also extremely useful: https://www.robinwieruch.de/node-express-server-rest-api

## Usage
Use curl in the terminal to GET and POST using the following as a guide:

curl -X GET _URL_:8080

curl -X POST -H "Content-Type:application/json" _URL_:8080 -d '{"text":"_Hello world_"}'
