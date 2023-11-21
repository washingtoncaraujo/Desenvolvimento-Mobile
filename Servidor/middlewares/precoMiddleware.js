/* eslint-disable linebreak-style */
/* eslint-disable max-len */
/* eslint-disable linebreak-style */

// Executa a validação da data
const validatePreco = (request, response, next) => {
    const { body } = request;
    if (body.preco == undefined || body.preco === '') {
        return response.status(400)
            .json({ message: 'O campo "Preco" é obrigatório' });
    }
    if (isNaN(parseFloat(body.preco)) || parseFloat(body.preco) < 0) {
        return response.status(400)
            .json({ message: 'O campo "Preco" deve ser positivo e valor possível' });
    }
    next();
};
// Exporta a função de validação de data
module.exports = { validatePreco };
