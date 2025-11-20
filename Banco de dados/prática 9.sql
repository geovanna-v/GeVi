CREATE DATABASE GeVi;
USE GeVi;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome_completo VARCHAR(50),
email VARCHAR(45),
senha VARCHAR(10)
);

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(100)
);

CREATE TABLE resultado(
idResultado INT,
id_usuario INT,
id_quiz INT,
pontuacao VARCHAR(5),
duracao DECIMAL(2),
posicao VARCHAR(2),
dtQuiz DATE,
CONSTRAINT fk_usuario
	FOREIGN KEY (id_usuario) REFERENCES usuario(idUsuario),
CONSTRAINT fk_quiz
	FOREIGN KEY (id_quiz) REFERENCES quiz(idQuiz));
    
SELECT * FROM usuario;
