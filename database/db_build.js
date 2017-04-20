const fs = require('fs');
const connPool = require('./db_connection.js');

const sql = fs.readFileSync(__dirname + '/db_build.sql').toString();

console.log('SQL:',sql);

connPool.query(sql, (error, result) => {
  if(error) {
    throw error;
    console.log(error);
  };
  console.log('Successfully created table! Woo!!');
});
