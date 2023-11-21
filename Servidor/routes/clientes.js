/* eslint-disable linebreak-style */
/* eslint-disable no-unused-vars */
/* eslint-disable linebreak-style */

// importa funções
const express = require('express');
const router = express.Router();
const clienteController = require('../controllers/clienteControllers');
const nomeMiddleware = require('../middlewares/nomeMiddleware');
const sobrenomeMiddleware = require('../middlewares/sobrenomeMiddleware');
const idadeMiddleware = require('../middlewares/idadeMiddleware');

/* rota GET clientes*/
router.get('/', clienteController.findAll);

/* rota POST clientes*/
router.post('/', nomeMiddleware.validateName,
    sobrenomeMiddleware.validateFamilyName,
    idadeMiddleware.validateAge,
    clienteController.save);

/* rota PUT clientes*/
router.put('/', nomeMiddleware.validateName,
    sobrenomeMiddleware.validateFamilyName,
    idadeMiddleware.validateAge, clienteController.update);

/* rota DELETE clientes*/
router.delete('/:id', clienteController.remove);

// Exporta as rotas clientes
module.exports = router;

