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
pergunta VARCHAR(100),
pontuacao INT
);

CREATE TABLE resultado(
idResultado INT,
id_usuario INT,
id_quiz INT,
pontuacao_final INT,
duracao DECIMAL(2),
posicao VARCHAR(2),
dtQuiz DATE,
CONSTRAINT fk_usuario
	FOREIGN KEY (id_usuario) REFERENCES usuario(idUsuario),
CONSTRAINT fk_quiz
	FOREIGN KEY (id_quiz) REFERENCES quiz(idQuiz));
    
INSERT INTO quiz (pergunta, pontuacao) VALUES
	('Qual é meu quarto pilar?', 100),
    ('Quais esportes eu pratico?', 100),
	('Qual meu time favorito?', 100),
	('Qual é meu segundo pilar?', 100),
	('O que tinha no meu carrossel?', 100);

SELECT u.nome_completo AS Nome,
    r.pontuacao_final AS Pontuacao
FROM usuario AS u
JOIN resultado AS r ON id_usuario = idUsuario
WHERE r.id_quiz = 1 
ORDER BY r.pontuacao_final DESC;

SELECT SUM(pontuacao) AS total_pontos
FROM quiz;






	
