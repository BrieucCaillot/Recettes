var express = require('express');
var router = express.Router();
var database = require('../services/database.js');

router.get('/all', function (req, res, next) {
	database.sendQuery('SELECT * FROM recipe', function (err, results) {
		if (err) {
			console.log(err)
		} else {
			res.json(results)
		}
	})
});

router.get('/:id', function (req, res, next) {
	database.sendQuery("SELECT * FROM recipe WHERE id = " + req.params.id , function (err, results) {
		if (err) {
			console.log(err)
		} else {
			res.json(results)
		}
	})
});

router.get('/:id/ingredients', function (req, res, next) {
	database.sendQuery("SELECT * FROM ingredients WHERE recipeId = " + req.params.id , function (err, results) {
		if (err) {
			console.log(err)
		} else {
			res.json(results)
		}
	})
});

router.get('/:id/steps', function (req, res, next) {
	database.sendQuery("SELECT * FROM steps WHERE recipeId = " + req.params.id , function (err, results) {
		if (err) {
			console.log(err)
		} else {
			res.json(results)
		}
	})
});


router.post('/add', function (req, res, next) {
	database.sendQuery("INSERT INTO `recipe`(`name`, `time`, `favorite`, `skill`) VALUES('" + req.body.name + "', '" + req.body.time + "', '" + req.body.favorite + "', '" + req.body.skill + "');", function (err, results) {
		if (err) {
			console.log(err)
		} else {
			res.json(results.insertId)
		}
	})
});

router.post('/add/steps', function (req, res, next) {
	// for (let i = 0; i < req.body.steps; i++) {
	// 	let step = req.body.steps[i]
		database.sendQuery("INSERT INTO `steps`(`recipeId`, `description`, `stepNumber`) VALUES('" + req.body.recipeId + "', '" + req.body.stepDescription + "', '" + req.body.stepNumber + "');", function (err, results) {
			if (err) {
				console.log(err)
			} else {
				res.json(results)
			}
		})
	// }
});

module.exports = router;
