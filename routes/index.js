var express = require('express');
var router = express.Router();
var path = require('path');

const sql = require('../utils/sql');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Renata Cunha'});

  let query = `SELECT * FROM tbl_projects`;

  sql.query(query, (err, result) => {
    if (err) { console.log(err); } // something done broke!

    console.log(result); // 

    res.render('index', { projects: result });
  })
});

module.exports = router;
