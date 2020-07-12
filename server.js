'use strict';
const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

/*
app.get('/', (req, res) => {
  res.send('Got new data');
});

app.post('/', (req, res) => {
  res.send('Posted new data');
});
*/

app.get('/', (req, res) => {
  res.send('Successful request.');
});

app.post('/', (req, res) => {
  res.send('Successful POST, received this value: ' + req.body)
});


app.listen(PORT, HOST);
console.log(`Running on ${PORT}`);
