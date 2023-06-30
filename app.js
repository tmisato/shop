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




app.get("/create", (req, res) =>
  res.sendFile(path.join(__dirname, "form.html"))
);
app.post("/", (req, res) => {
  const sql = "INSERT INTO review SET ?";

  con.query(sql, req.body, function (err, result, fields) {
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

app.get("/review/:id", (req, res) => {
  const reviewId = req.params.id;
  const sql = `select * from review where id = ${reviewId}`;
  con.query(sql, function (err, result, fields) {
    if (err) throw err;
    res.render("review", { review: result });
  });
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
