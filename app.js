const path = require("path");
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs"); //追加
const app = express();
const mysql = require("mysql2");
const port = 3000;

app.use(express.static("public"));
app.set("view engine", "ejs");

const con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "rootroot",
  database: "shop_db",
});

app.use(bodyParser.urlencoded({ extended: true }));



app.get("/create", (req, res) => {
  const item = req.query.item; // クエリパラメータからアイテムのカラムのデータを取得 // フォームに渡すデータとして設定
  res.render("form", { item: item });
});

app.post("/", (req, res) => {
  const { username, age, rating, reason, item } = req.body;
  const created_at = new Date();

  const sql = "INSERT INTO review (username, age, rating, reason, item, created_at) VALUES (?, ?, ?, ?, ?, ?)";
  const values = [username, age, rating, reason, item, created_at];

  con.query(sql, values, function (err, result, fields) {
    if (err) throw err;
    console.log(result);

    res.redirect("/");
  });
});


app.get("/list/:item", (req, res) => {
  const sql = "SELECT * FROM itemlist WHERE item = ?";
  con.query(sql, [req.params.item], function (err, result, fields) {
    if (err) throw err;
    const itemlist = result.map((item) => {
      item.images = item.image.split(",");
      return item;
    });

    const reviewSql = "SELECT * FROM review WHERE item = ?";
    con.query(reviewSql, [req.params.item], function (err, reviewResult, fields) {
      if (err) throw err;
      res.render("list", {
        itemlist: itemlist,
        review: reviewResult,
      });
    });
  });
});

app.get("/", (req, res) => {
  const sql =
    "SELECT DISTINCT item, GROUP_CONCAT(image) AS images,  GROUP_CONCAT(price) AS price FROM itemlist GROUP BY item";
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.render("index", { itemlist: result });
  });
});





app.listen(port, () => console.log(`Example app listening on port ${port}!`));
