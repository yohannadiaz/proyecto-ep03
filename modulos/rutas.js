	db   		    = 	require('./database'),
    db.conectaDatabase();

var notFound404 = function(req, res)
{
	res.status(404).send("Página no encontrada :( en el momento");
};
var getQuestions =  function(req, res)
{
		db.queryMysql("select numpregunta, pregunta, opcion1, opcion2, opcion3, opcion4 from preguntas order by rand();", function(err, data){
			if (err) throw err;
			res.json(data);
		});
};

var isValid =  function (req, res)
{
	db.queryMysql("select correcta from preguntas where numpregunta = " + req.body.numPregunta, function(err, data){
		if (err) throw err;
		res.json({
					respuestaCorrecta : data[0].correcta,
					correcto	: data[0].correcta === req.body.respuesta ? true : false
		}
		);
	}
	);
};

module.exports.notFound404 = notFound404;
module.exports.getQuestions = getQuestions;
module.exports.isValid = isValid;

