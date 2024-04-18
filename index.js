
const express = require('express');

// Constants
const PORT = process.env.PORT || 3000;
const HOST = process.env.HOST || 'localhost';

// App
const app = express();

app.use('/', (req, res) => {
  return res.send(`Hello World ashish`);
});

app.listen(PORT);
console.log(`Running on port :${PORT}`);