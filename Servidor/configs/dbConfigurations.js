/* eslint-disable linebreak-style */
// importa o mysql
const mysql = require('mysql2/promise');
// importa o dotenv
require('dotenv').config();
// cria a conexão com o BD mysql
const connection = mysql.createConnection({
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASS,
    database: process.env.MYSQL_DB,
    port: process.env.MYSQL_PORT,
});
// exporta a conexão
module.exports = connection;
