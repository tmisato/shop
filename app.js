const express = require('express');
const app = express();
const port = 3000;

const mysql = require('mysql2');
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'rootroot',
  database: 'shop_db'
});




app.get('/', (req, res) => res.send('DB追加'));
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
