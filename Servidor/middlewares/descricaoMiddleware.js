/* eslint-disable linebreak-style */

// Valida descrição
const validateDescricao = (request, response, next) => {
    const { body } = request;
    if (body.descricao == undefined) {
        return response.status(400)
            .json({ message: 'O campo "descricao" é obrigatório' });
    }
    if (body.descricao === '') {
        return response.status(400)
            .json({ message: 'O campo "descricao" não pode ser vazio' });
    }
    next();
};

// Exporta a validação de descricao
module.exports = { validateDescricao };
