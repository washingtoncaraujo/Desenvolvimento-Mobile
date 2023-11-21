/* eslint-disable linebreak-style */
// importação de funções
const express = require('express');
const router = express.Router();

/* rota principal: GET home page. */
router.get('/', function(req, res, next) {
    res.render('index', { title: 'Express' });
});

// Exporta rota principal
module.exports = router;
