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



    

app.get('/list/:itemid', (req, res) => {
  const itemid = req.params.itemid;
  const sql = 'SELECT * FROM itemlist WHERE itemid = ?';
  con.query(sql, [itemid], function(err, results) {
    if (err) throw err;
    const itemlist = results[0];
    const sql2 = 'SELECT image_path FROM itemlist WHERE itemid = ?';
    con.query(sql2, [itemid], function(err, imageResults) {
      if (err) throw err;
      const images = imageResults.map(image => image.image_path); // 画像パスのみを抽出
      itemlist.images = images; // 画像パスをitemlistオブジェクトに追加

      res.render('list', { itemlist: itemlist });
    });
  });
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
