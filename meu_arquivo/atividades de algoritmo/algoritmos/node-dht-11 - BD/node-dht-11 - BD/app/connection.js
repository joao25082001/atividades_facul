var mysql2 = require('mysql');

var connection = mysql2.createConnection({
    host     : 'localhost',
    port     : '3306',
    user     : 'atividade',
    password : 'Megpancho1.',
    database : 'arq'
});

connection.connect(function(err) {
    if (err) throw err;
    console.log('Conectado ao BD com sucesso!')
});



module.exports = connection;