/* eslint-disable linebreak-style */

// importação de funções
const express = require('express');
const router = express.Router();

/* rota auxiliar: GET users listing. */
router.get('/', function(req, res, next) {
    res.send('Em construção ...');
});

// Exportação da rota auxilar
module.exports = router;
