/* eslint-disable linebreak-style */
/* eslint-disable max-len */
/* eslint-disable linebreak-style */
// importa o cliente modelo
const produtoModel = require('../services/produtoModel');

// solicita o modelo de busca de dados
const findAll = async (request, response) => {
    const produtos = await produtoModel.findAll();
    return response.status(200).json(produtos);
};

// solicita o modelo de inserção de dados
const save = async (request, response) => {
    const result = await produtoModel.save(request.body);
    return result ?
        response.status(200).json({'Resposta:': 'Inserido com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao salvar produto' });
};
// solicita o modelode atualização de dados
const update = async (request, response) => {
    const result = await produtoModel.update(request.body);
    return result ?
        response.status(200).json({'Resposta:': 'Atualizado com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao atualizar produto' });
};
// solicita o modelo de exclusão de dados
const remove = async (request, response) => {
    const { id } = request.params;
    const result = await produtoModel.remove(id);
    return result ?
        response.status(200).json({'Resposta:': 'Removido com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao remover produto' });
};
// exporta as funções de controle
module.exports = {
    findAll,
    save,
    remove,
    update,
};
