CREATE TABLE users
(
  email VARCHAR(255) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO users
  (email)
VALUES
  ('katie34@yahoo.com'),
  ('Tunde@gmail.com')

/*Selecting Data
// var q = 'Select COUNT(*) AS total FROM users';

// connection.query(q, function(error, results, fields) {
// 	if (error) throw error;
// 	console.log(results[0].total);
// });

// Inserting Data
// let person = {
// 	email: faker.internet.email(),
// 	created_at: faker.date.past()
// };

// connection.query('INSERT INTO users SET ?', person, function(err, result) {
// 	if (err) throw err;
// 	console.log(result);
// });

// let data = [];

// for (let i = 0; i < 500; i++) {
// 	data.push([ faker.internet.email(), faker.date.past() ]);
// }

// let q = 'INSERT INTO users (email, created_at) VALUES ?';

// connection.query(q, [ data ], function(err, result) {
// 	console.log(err);
// 	console.log(result);
// });

// connection.end(); */