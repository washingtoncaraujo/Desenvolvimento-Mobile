/* eslint-disable linebreak-style */

// valida o nome
const validateName = (request, response, next) => {
    const { body } = request;
    if (body.nome == undefined) {
        return response.status(400)
            .json({ message: 'O campo "nome" é obrigatório' });
    }
    if (body.nome === '') {
        return response.status(400)
            .json({ message: 'O campo "nome" não pode ser vazio' });
    }
    next();
};

// Exporta a função de validação de nome
module.exports = { validateName };

