const path = require("path");
const express = require("express");
const bodyParser = require("body-parser");
const ejs = require("ejs");
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
  const item = req.query.item; 
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

    const selectedValue = req.query.sort;
    const selectedFilter = req.query.filter;
    const reviewSql = "SELECT * FROM review WHERE item = ?";


    let sqlWithFilter = reviewSql;
    if (selectedFilter && selectedFilter !== "0") {
      sqlWithFilter += " AND rating = '" + selectedFilter + "'";
    }

    let sqlWithSort = sqlWithFilter;
    if (selectedValue === "2") {
      sqlWithSort += " ORDER BY rating DESC";
    }

    if (selectedValue === "3") {
      sqlWithSort += " ORDER BY rating ASC";
    }
    // 修正終了

    con.query(sqlWithSort, [req.params.item], function (err, reviewResult, fields) {
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
