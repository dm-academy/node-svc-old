//server2 builds on server1 to implement full API functionality. 

'use strict';
const express = require('express');
const bodyParser = require('body-parser')

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get('/', (req, res) => {
  res.json(["A", "B", "C", "D"]);
});

app.post('/', (req, res) => {
  //var myData = JSON.stringify(req.body);
  console.log('Got body:', myData);
  res.json(["A", "B"] + JSON.stringify(req.body)); //
  //res.status(200).end();
  console.log('returned success.')
});


app.listen(PORT, HOST);
console.log(`Running on ${PORT}`);
