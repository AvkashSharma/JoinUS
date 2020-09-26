const express = require('express');
const app = express();
const port = 3000;
const mysql = require('mysql');
const faker = require('faker');
const bodyParser = require('body-parser');

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + '/public'));

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'join_us'
});

app.get('/', (req, res) => {
	var q = 'SELECT COUNT(*) as count FROM users';
	connection.query(q, (err, results) => {
		if (err) throw err;
		var count = results[0].count;

		res.render('home', { data: count });
	});
});

app.post('/register', (req, res) => {
	let person = {
		email: req.body.email
	};
	connection.query('INSERT INTO users SET ?', person, (err, result) => {
		if (err) throw err;
		res.redirect('/');
	});
});

app.listen(port, () => {
	console.log(`Example app listening at http://localhost:${port}`);
});
