"use strict"
const mysql = require("mysql");

const conn = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "bdkqwxz2", // change this password
  database: "mario"
})

function query(sql) {
  return new Promise(function (resolve, reject) {
    conn.query(sql, function (err, results){
      console.log(results);
      //if(err){
      //  console.log(err);
      //  reject(err);
      //}
      //else
        resolve(results);
    });
  });
}

const people = {}

people.create = async function(req, res) {
  const person = req.body;
  console.log(person);
  const sql =
    `
    INSERT INTO people SET ${mysql.escape(person)}
    `;

  console.log(sql);
  let response = {};
  try {
    await query(sql);
    response.message = `Successfully created person: ${person.fname} ${person.lname}!`;
  }
  catch(err){
    res.status(400);
    response = new Error("Failed to create user!");
  }
    return res.json(response);
}

people.read = async function(req, res) {
  const search = req.body.search;
  const sql =
    `
    SELECT person_id, fname, lname, email, banner_id
    FROM people
    WHERE
      fname LIKE "${search}%" OR
      lname LIKE "${search}%" OR
      email LIKE "${search}%" OR
      banner_id LIKE "${search}%"
    LIMIT 10
    `;

  console.log(sql);
  let response = [];
  try {
    const results = await query(sql);
    response = results;
  }
  catch(err){
    res.status(400);
    response = err;
  }

  return res.json(response);
}

people.update = async function(req, res) {
  const person = req.body.person;
  const sql =
    `
    UPDATE people
    SET ${mysql.escape(person)}
    WHERE
      person_id=${person.personId}
    `;

  let response = {};
  try{
    await query(sql);
    response.message = `Successfully updated`;
  }
  catch(err){
    // res.status(400);
    response = err;
  }

  return res.json(response);
}

people.delete = async function(req, res) {
  const personId = req.body.personId;
  const sql =
    `
    DELETE FROM people
    WHERE person_id=${personId}
    `;

  let response = {};
  try{
    await query(sql);
    response = {message: "User deleted"};
  }
  catch(err){
    res.status(400);
    response = err;
  }

  return res.json(response);
}

module.exports = people
