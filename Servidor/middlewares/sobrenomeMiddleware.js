/* eslint-disable linebreak-style */

// Valida sobrenome
const validateFamilyName = (request, response, next) => {
    const { body } = request;
    if (body.sobrenome == undefined) {
        return response.status(400)
            .json({ message: 'O campo "sobrenome" é obrigatório' });
    }
    if (body.sobrenome === '') {
        return response.status(400)
            .json({ message: 'O campo "sobrenome" não pode ser vazio' });
    }
    next();
};

// Exporta a validação de sobrenome
module.exports = { validateFamilyName };
