"use strict"

const express = require("express");
const path = require("path");
const bodyParser = require("body-parser");
const requireAll = require("require-all");
const routes = require('require-all')(path.join(__dirname, 'routes'));

const app = express();

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use("/js", express.static(path.join(__dirname, "..", "js")));
app.use("/css", express.static(path.join(__dirname, "..", "css")));

app.get("/", function(req, res){
  res.sendFile(path.join(__dirname, "..", "index.html"));
})

console.log(routes.people);
app.post("/people/create", routes.people.create);
app.post("/people/read", routes.people.read);
app.post("/people/update", routes.people.update);
app.post("/people/delete", routes.people.delete);

app.listen(3000);
