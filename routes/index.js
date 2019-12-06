var express = require('express');
var router = express.Router();
var path = require('path');
var auth = require('../config/mailcreds');
var mailer = require('nodemailer');

const sql = require('../utils/sql');

const transporter = mailer.createTransport({
	service: 'gmail',
	auth: {
		user: auth.user,
		pass: auth.pass
	}
});

router.post('/mail', (req, res) => {

  const mailOptions = {
    from: req.body.name,
    to: auth.user,
    replyTo: req.body.email,
    subject: `From portfolio site: Subject = ${req.body.subject || 'none'}`,
    text: req.body.message
  };

  transporter.sendMail(mailOptions, function (err, info) {
    if (err) {
      console.log("failed... ", err);
      res.json(err);
    } else {
      console.log("success! ", info);
      res.json(info);
    }
  });
})

/* GET home page. */
router.get('/', function (req, res, next) {
  //res.render('index', { title: 'Renata Cunha'});

  let query = `SELECT * FROM tbl_projects`;

  sql.query(query, (err, result) => {
    if (err) { console.log(err); } // something done broke!

    res.render('index', { projects: result, title: 'Renata Cunha' });
  })
});

router.get('/project/:target', (req, res) => {
  //here is where we set up the query
  let query = `SELECT * FROM tbl_projects WHERE proj_id="${req.params.target}"`;

  sql.query(query, (err, result) => {
    if (err) { console.log(err); } // something done broke!

    console.log(result); // this should be the database row

    res.json(result[0]); // send that row back to the calling function
  })
});

module.exports = router;
