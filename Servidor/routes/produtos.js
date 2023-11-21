/* eslint-disable max-len */
/* eslint-disable no-unused-vars */
/* eslint-disable linebreak-style */

// importação de funções
const express = require('express');
const router = express.Router();
const produtoControllers = require('../controllers/produtoControllers');
const nomeMiddleware = require('../middlewares/nomeMiddleware');
const descricaoMiddleware = require('../middlewares/descricaoMiddleware');
const precoMiddleware = require('../middlewares/precoMiddleware');
/* rota GET produtos*/
router.get('/', produtoControllers.findAll);
/* rota POST produtos*/
router.post('/', nomeMiddleware.validateName, descricaoMiddleware.validateDescricao,
    precoMiddleware.validatePreco, produtoControllers.save);
/* rota PUT produtos*/
router.put('/', produtoControllers.update);
/* rota DELETE produtos*/
router.delete('/:id', produtoControllers.remove);

// Exportação das rotas produtos
module.exports = router;
