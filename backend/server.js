var express = require('express')
var cors = require('cors')
const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'mydb',
  password :'root'
});

var app = express()
app.use(cors())
app.use(express.json())

app.listen(5000, function () {
  console.log('CORS-enabled web server listening on port 5000')
})


app.get('/users', function (req, res, next) {
    connection.query(
      'SELECT * FROM `employees`',
      function(err, results, fields) {
        res.json(results);
      }
    );
  })
  
  app.get('/users/:id', function (req, res, next) {
    const id = req.params.id;
    connection.query(
      'SELECT * FROM `employees` WHERE `id` = ?',
      [id],
      function(err, results) {
        res.json(results);
      }
    );
  })

  app.post('/users/add', function (req, res, next) {
    connection.query(
      'INSERT INTO `employees` ( `number_id`, `fname`, `lname`, `start_date`, `date_of_birth`, `age`, `sex`, `height`, `weight`, `blood`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?,?)',
      [req.body.number_id,req.body.fname, req.body.lname, req.body.start_date, req.body.date_of_birth, req.body.age, req.body.sex, req.body.height, req.body.weight, req.body.blood],
      function(err, results) {
        // res.json(results);
        res.json('Create user successfully')
      }
    );
  })

  app.delete('/users/del', function (req, res, next) {
    connection.query(
      'DELETE FROM `employees` WHERE id = ?',
      [req.body.id],
      function(err, results) {
        res.json(results);
      }
    );
  })