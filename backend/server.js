var express = require('express')
var cors = require('cors')
const mysql = require('mysql2');
const { Message } = require('@mui/icons-material');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'mydb',
  password: 'root'
});

var app = express()
app.use(cors())
app.use(express.json())

// Add headers before the routes are defined
// app.use(function (req, res, next) {

//   // Website you wish to allow to connect
//   // res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');

//   // Request methods you wish to allow
//   res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

//   // Request headers you wish to allow
//   res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

//   // Set to true if you need the website to include cookies in the requests sent
//   // to the API (e.g. in case you use sessions)
//   res.setHeader('Access-Control-Allow-Credentials', true);

//   // Pass to next layer of middleware
//   next();
// });

app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.listen(5000, function () {
  console.log('CORS-enabled web server listening on port 5000')
})



app.get('/users', function (req, res, next) {

  connection.query(
    'SELECT * FROM `employees`',
    function (err, results, fields) {
      res.json(results);
    }
  );
})

app.get('/users/:id', function (req, res, next) {

  const id = req.params.id;
  connection.query(
    'SELECT * FROM `employees` WHERE `id` = ?',
    [id],
    function (err, results) {
      if (!results) {
        res.json(null)
      } else {
        res.json(results);
      }

    }
  );
})

app.post('/users/add', function (req, res, next) {

  // res.header( "Access-Control-Allow-Origin" );
  connection.query(
    'INSERT INTO `employees` ( `number_id`, `fname`, `lname`, `start_date`, `date_of_birth`, `age`, `sex`, `height`, `weight`, `blood`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?,?)',
    [req.body.number_id, req.body.fname, req.body.lname, req.body.start_date, req.body.date_of_birth, req.body.age, req.body.sex, req.body.height, req.body.weight, req.body.blood],
    function (err, results) {
      // res.json(results);
      res.json('Create user successfully')
    }
  );
})

app.delete('/users/del', function (req, res, next) {
  // res.header( "Access-Control-Allow-Origin", );

  connection.query(
    'DELETE FROM `employees` WHERE id = ?',
    [req.body.id],
    function (err, results) {
      return res.json(results)


    }
  );
})

//update type 1
// app.put('users/update', function (req, res, next) {
//   let id = req.body.id
//   let number_id = req.body.number_id
//   let fname = req.body.fname
//   let lname = req.body.lname
//   let start_date = req.body.start_date
//   let date_of_birth = req.body.date_of_birth
//   let age = req.body.age
//   let sex = req.body.sex
//   let height = req.body.height
//   let weight = req.body.weight
//   let blood = req.body.blood

//   // if (!id || !number_id || !fname || !lname || !start_date || !date_of_birth || !age || !height || !weight || !blood||!id) {
//   //   return res.status(400)
//   //     .send({
//   //       error: true,
//   //       message:'Data is not completely '
//   //     });
//   // }else{
//     connection.query(
//       'UPDATE `employees` SET `number_id` = ?, `fname` = ?, `lname` = ?, `start_date` = ?, `date_of_birth` = ?, `age` = ?, `sex` = ?, `height` = ?,`weight` = ?, `blood` = ? WHERE id = ?',
//       // [number_id,fname,lname,start_date,date_of_birth,age,sex,height,weight,blood,id],
//       [
//         req.body.number_id,
//          req.body.fname, 
//          req.body.lname, 
//          req.body.start_date, 
//          req.body.date_of_birth, 
//          req.body.age, 
//          req.body.sex, 
//          req.body.height, 
//          req.body.weight, 
//          req.body.blood,
//          req.body.id
//         ],
//       function (err,results) {
//         res.json(results)
//         // if (error) throw error;
//         // let message = ""
//         // if (result.changedRows === 0) {
//         //   message = "not update"
//         // }
//         // else{
//         //   message = "Update is successfully"
//         // }

//         // return res.send({
//         //   error:false,data:result,message:message
//         // })

//       }
//     )
//   // }
//   // connection.query(
//   //   'INSERT INTO `employees` ( `number_id`, `fname`, `lname`, `start_date`, `date_of_birth`, `age`, `sex`, `height`, `weight`, `blood`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?,?)  WHERE `id` = ? ',
//   //   [req.body.number_id, req.body.fname, req.body.lname, req.body.start_date, req.body.date_of_birth, req.body.age, req.body.sex, req.body.height, req.body.weight, req.body.blood,id],
//   //   function (err, results) {
//   //      res.json(results,err);
//   //     res.json('Create user successfully')
//   //   }
//   // )

// })

// update 2 
app.put('/users/update', function (req, res, next) {
  connection.query(
    'UPDATE  `employees` SET `number_id` = ?, `fname` = ?, `lname` = ?, `start_date` = ?, `date_of_birth` = ?, `age` = ?, `sex` = ?, `height` = ?,`weight` = ?, `blood` = ? WHERE id = ?',
    [
      req.body.number_id,
      req.body.fname,
      req.body.lname,
      req.body.start_date,
      req.body.date_of_birth,
      req.body.age,
      req.body.sex,
      req.body.height,
      req.body.weight,
      req.body.blood,
      req.body.id
    ],
    function (err, results) {
      res.json(results);
    }
  );
})

//------------------------------customer---------------------------------//
//add customer
app.post('/customer/add', function (req, res, next) {
connection.query(
  'INSERT INTO `customers` ( `number_id`, `fname`, `lname`, `phone_number`, `sex`, `blood`,`drug_allergy`,`congenital_disease`,`etc_note`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [req.body.number_id, 
      req.body.fname, 
      req.body.lname, 
      req.body.phone_number, 
      req.body.sex, 
      req.body.blood, 
      req.body.drug_allergy, 
      req.body.congenital_diseaset, 
      req.body.etc_note],
    function (err, results) {
      res.json(results);
    }
)
})

//get all customers
app.get('/customer',function(req,res,next){
  connection.query(
    'SELECT * FROM `customers`',
    function (err,result,field) {
      res.json(result)
    }
  )
})

//delete customer
app.delete('/customer/delete',function (req,res,next) {
  connection.query(
    'DELETE FROM `customers` WHERE number_id = ?',
    [req.body.number_id],
    function (err,result) {
      res.json(result)
    }
  )
  
})

//get some customer
app.get('/customer/:id', function (req, res, next) {

  const id = req.params.id;
  connection.query(
    'SELECT * FROM `customers` WHERE `number_id` = ?',
    [id],
    function (err, results) {
      if (!results) {
        res.json(null)
      } else {
        res.json(results);
      }

    }
  );
})

//update customer
app.put('/customers/edit', function (req, res, next) {
  connection.query(
    'UPDATE  `customers` SET `fname` = ?, `lname` = ?, `phone_number` = ?, `sex` = ?, `blood` = ?, `drugAllergy` = ?, `congenitalDisease` = ?,`etcNote` = ?  WHERE number_id = ?',
    [
      req.body.fname,
      req.body.lname,
      req.body.phone_number,
      req.body.sex,
      req.body.blood,
      req.body.drug_allergy,
      req.body.congenital_disease,
      req.body.etc_note,
      req.body.number_id
    ],
    function (err, results) {
      if (results) {
        res.json(results);
      }
      else{
        res.json(err)
      }
      
    }
  );
})

//------------------------------doctor-------------------------------//
//add doctor
app.post('/doctor/add', function (req, res, next) {
  connection.query(
    'INSERT INTO `doctors` (  `fname`, `lname`, `password`) VALUES ( ?, ?, ?)',
      [
        req.body.fname, 
        req.body.lname, 
        req.body.password
      ],
      function (err, results) {
        res.json(results);
      }
  )
  })
  
  //get all doctors
  app.get('/doctor',function(req,res,next){
    connection.query(
      'SELECT * FROM `doctors`',
      function (err,result,field) {
        res.json(result)
      }
    )
  })
  
  //delete doctor
  app.delete('/doctor/delete',function (req,res,next) {
    connection.query(
      'DELETE FROM `doctors` WHERE id = ?',
      [req.body.id],
      function (err,result) {
        res.json(result)
      }
    )
    
  })
  
  //get some doctor
  app.get('/doctor/:id', function (req, res, next) {
  
    const id = req.params.id;
    connection.query(
      'SELECT * FROM `doctors` WHERE `id` = ?',
      [id],
      function (err, results) {
        if (!results) {
          res.json(null)
        } else {
          res.json(results);
        }
  
      }
    );
  })
  
  //update doctor
  app.put('/doctor/edit', function (req, res, next) {
    connection.query(
      'UPDATE  `doctors` SET `fname` = ?, `lname` = ?  WHERE id = ?',
      [
        req.body.fname,
        req.body.lname,
        req.body.id
      ],
      function (err, results) {
        if (results) {
          res.json(results);
        }
        else{
          res.json(err)
        }
        
      }
    );
  })



