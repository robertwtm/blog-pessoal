CREATE DATABASE blogPessoal;
USE blogPessoal;

CREATE TABLE tb_temas(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_usuarios(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    usuario VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    foto VARCHAR(255)
);
	
CREATE TABLE tb_postagens(
	id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    texto VARCHAR(1000) NOT NULL,
    `data`DATE,
    tema_id BIGINT,
    usuario_id BIGINT,
    FOREIGN KEY (tema_id) REFERENCES tb_temas (id),
    FOREIGN KEY (usuario_id) REFERENCES tb_usuarios(id)
);