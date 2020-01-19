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
  res.send('Try POSTing to this URL. See readme in Github');
});

app.post('/', (req, res) => {
  res.send(req.body.text);
});


app.listen(PORT, HOST);
console.log(`Running on ${PORT}`);
