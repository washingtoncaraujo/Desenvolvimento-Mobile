/* eslint-disable linebreak-style */
/* eslint-disable max-len */
/* eslint-disable linebreak-style */

// mportação da conexão com o DB
const connection = require('../configs/dbConfigurations');

// Busca de dados no BD
const findAll = async () => {
    const clientes = await (await connection).execute('SELECT * FROM clientes');
    return clientes[0];
};
// Atualização de dados no BD
const update = async (cliente) => {
    const query = 'UPDATE clientes SET nome = ?, sobrenome = ?, email = ?, idade = ? WHERE id = ?';
    const isOk = await (await connection).execute(query,
        [cliente.nome, cliente.sobrenome, cliente.email, cliente.idade,
            cliente.id]);
    return isOk[0].affectedRows === 1;
};
// Inserção de dados no BD
const save = async (cliente) => {
    const query = 'INSERT INTO clientes(nome, sobrenome, email, idade) VALUES (?, ?, ?, ?)';
    const isOk = await (await connection).execute(query,
        [cliente.nome, cliente.sobrenome, cliente.email,
            cliente.idade]);
    return isOk[0].affectedRows === 1;
};
// Exclusão de dados no BD
const remove = async (id) => {
    const query = 'DELETE FROM clientes WHERE id = ?';
    const isOk = await (await connection).execute(query, [id]);
    return isOk[0].affectedRows === 1;
};

// Exportação das funções de manipulação de dados no BD
module.exports = {
    findAll,
    save,
    remove,
    update,
};
