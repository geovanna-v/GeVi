var database = require("../database/config")

function listar() {
    var instrucao = `
        SELECT nome_completo FROM usuario;`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

function cadastrar(nome) {
    var instrucao = `
        INSERT INTO usuario (nome_completo) VALUES ('${nome}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao, [nome]);
}

module.exports = {
    cadastrar,
    listar
};