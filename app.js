const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');
const ejs = require('ejs'); //追加
const app = express();
const port = 3000;

app.use(express.static('public'));
app.set('view engine', 'ejs');

const mysql = require('mysql2');
const con = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'rootroot',
  database: 'shop_db'
});


app.get('/', (req, res) => {
	const sql = "select * from itemlist";
	con.query(sql, function (err, result, fields) {
		if (err) throw err;
		res.render('index', { itemlist: result });
	});
});

app.get('/review/:id', (req, res) => {
	const reviewId = req.params.id;
	const sql = `select * from review where id = ${reviewId}`;
	con.query(sql, function (err, result, fields) {
		if (err) throw err;
		res.render('review', { review: result });
	});
});



app.listen(port, () => console.log(`Example app listening on port ${port}!`));
