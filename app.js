const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');
const ejs = require('ejs'); //追加
const app = express();
const port = 3000;

app.set('view engine', 'ejs');

const mysql = require('mysql2');
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'rootroot',
  database: 'shop_db'
});





app.get('/', (req, res) => res.send('DB追加'));
app.listen(port, () => console.log(`Example app listening on port ${port}!`));

