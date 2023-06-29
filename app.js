const path = require("path");
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs"); //追加
const app = express();
const port = 3000;

app.use(express.static("public"));
app.set("view engine", "ejs");

const mysql = require("mysql2");
const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "rootroot",
  database: "shop_db",
});
app.get("/list/:item", (req, res) => {
  const item = req.params.item;
  const sql = "SELECT * FROM itemlist WHERE item = ?";


  con.query(sql, [item], function (err, results) {
    if (err) throw err;
    const itemlist = results;
    const sql2 = "SELECT image FROM itemlist WHERE item = ?";
    con.query(sql2, [item], function (err, imageResults) {
      if (err) throw err;
      const images = imageResults.map((image) => image.image);
      itemlist.forEach((item) => {
        item.images = images.filter((image) => image.startsWith(item.item));
      });

      res.render("list", { itemlist: itemlist });
    });
  });
});


app.get("/", (req, res) => {
  const sql = "SELECT DISTINCT item, GROUP_CONCAT(image) AS images FROM itemlist GROUP BY item";
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.render("index", { itemlist: result });
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
