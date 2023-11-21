/* eslint-disable linebreak-style */
/* eslint-disable max-len */
/* eslint-disable linebreak-style */
// importa o cliente modelo
const clienteModel = require('../services/clienteModel');
// solicita o modelo de busca de dados
const findAll = async (request, response) => {
    const clientes = await clienteModel.findAll();
    return response.status(200).json(clientes);
};
// solicita o modelo de inserção de dados
const save = async (request, response) => {
    const result = await clienteModel.save(request.body);
    return result ?
        response.status(200).json({'Resposta:': 'Inserido com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao salvar cliente' });
};
// solicita o modelode atualização de dados
const update = async (request, response) => {
    const result = await clienteModel.update(request.body);
    return result ?
        response.status(200).json({'Resposta:': 'Atualizado com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao atualizar cliente' });
};
// solicita o modelo de exclusão de dados
const remove = async (request, response) => {
    const { id } = request.params;
    const result = await clienteModel.remove(id);
    return result ?
        response.status(200).json({'Resposta:': 'Removido com sucesso'}) :
        response.status(400).json({ '[ERROR/SERVER]': 'Falha ao remover cliente' });
};
// exporta as funções de controle
module.exports = {
    findAll,
    save,
    remove,
    update,
};
