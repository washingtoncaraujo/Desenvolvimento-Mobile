/* eslint-disable linebreak-style */
/* eslint-disable max-len */
/* eslint-disable linebreak-style */

// Executa a validação da data
const validateAge = (request, response, next) => {
    const { body } = request;
    if (body.idade == undefined || body.idade === '') {
        return response.status(400)
            .json({ message: 'O campo "idade" é obrigatório' });
    }
    if (isNaN(parseInt(body.idade)) || parseInt(body.idade) < 0 || parseInt(body.idade) > 130) {
        return response.status(400)
            .json({ message: 'O campo "idade" deve ser inteiro positivo e valor possível' });
    }
    next();
};
// Exporta a função de validação de data
module.exports = { validateAge };
