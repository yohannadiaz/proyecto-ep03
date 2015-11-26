"use strict";
var mysql = require('mysql'),
    conexion = 0;

exports.conectaDatabase = function()
{
    //Realizar la conexión a la base de datos Mysql...
    conexion = mysql.createConnection({
      host     	: 'localhost',
      user     	: 'root',
      password  : '',
      database  : 'j_trivia'
    });
    conexion.connect();
};

//Realiza la consulta...
exports.queryMysql = function(sql, callback)
{
	conexion.query(sql, function(err, rows, fields)
	{
		if (err) throw err;
		callback(err, rows);
	});
};
