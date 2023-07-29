CREATE DATABASE IF NOT EXISTS exercicio_02;

USE exercicio_02

CREATE TABLE produtividade (
    produtividade_id INT NOT NULL AUTO_INCREMENT,
    produtividade_total_vitorias INT NOT NULL DEFAULT 0,
    produtividade_total_derrotas INT NOT NULL DEFAULT 0,
    produtividade_total_empates INT NOT NULL DEFAULT 0,
    PRIMARY KEY(produtividade_id)
);

CREATE TABLE equipes(
    equipe_id INT NOT NULL AUTO_INCREMENT,
    equipe_nome VARCHAR(100) NOT NULL,
    equipe_quantidade_titulos_estaduais INT NOT NULL DEFAULT 0,
    equipe_cidade VARCHAR(100) NOT NULL,
    produtividade_id INT NOT NULL,
    PRIMARY KEY (equipe_id),
    FOREIGN KEY (produtividade_id) REFERENCES produtividade(produtividade_id)
);

CREATE TABLE partidas(
    partida_id INT NOT NULL AUTO_INCREMENT,
    partida_estadio VARCHAR(100) NOT NULL DEFAULT 'estádio desconhecido e/ou sem nome',
    partida_cidade VARCHAR(100) NOT NULL,
    partida_quantidade_faltas INT NOT NULL DEFAULT 0,
    partida_equipe_01 VARCHAR(10) NOT NULL,
    partida_equipe_02 VARCHAR(10) NOT NULL,
    partida_placar_equipe_01 INT NOT NULL DEFAULT 0,
    partida_placar_equipe_02 INT NOT NULL DEFAULT 0,
    partida_data DATETIME NOT NULL,
    PRIMARY KEY (partida_id)
);

CREATE TABLE jogadores(
    jogador_id INT NOT NULL AUTO_INCREMENT,
    jogador_nome VARCHAR(100) NOT NULL,
    jogador_numero_camisa VARCHAR(2) NOT NULL,
    jogador_data_nascimento DATE NOT NULL,
    jogador_posicao VARCHAR(50) NOT NULL DEFAULT 'sem posição definida',
    equipe_id INT NOT NULL,
    produtividade_id INT NOT NULL,
    PRIMARY KEY (jogador_id),
    FOREIGN KEY (equipe_id) REFERENCES equipes(equipe_id),
    FOREIGN KEY (produtividade_id) REFERENCES produtividade(produtividade_id)
);

CREATE TABLE treinadores(
    treinador_id INT NOT NULL AUTO_INCREMENT,
    treinador_nome VARCHAR(100) NOT NULL,
    treinador_quantidade_titulos_estaduais INT NOT NULL DEFAULT 0,
    treinador_data_ingresso_equipe_atual DATE NOT NULL,
    equipe_id INT NOT NULL,
    produtividade_id INT NOT NULL,
    PRIMARY KEY (treinador_id),
    FOREIGN KEY (equipe_id) REFERENCES equipes(equipe_id),
    FOREIGN KEY (produtividade_id) REFERENCES produtividade(produtividade_id)
);

DESC jogadores;
DESC equipes;
DESC partidas;
DESC treinadores;
DESC produtividade;