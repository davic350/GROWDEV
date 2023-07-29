CREATE DATABASE IF NOT EXISTS exercicio_03;

USE exercicio_03;

CREATE TABLE desempenho_conteudo (
    desempenho_conteudo_id INT NOT NULL AUTO_INCREMENT,
    desempenho_taxa_retencao FLOAT NOT NULL DEFAULT 0,
    desempenho_avaliacao_media FLOAT NOT NULL DEFAULT 0,
    desmepenho_porcentagem_media_relacao FLOAT NOT NULL DEFAULT 0,
    desempenho_semanas_charts INT NOT NULL DEFAULT 0,
    desempenho_taxa_compartilhamento FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY (desempenho_conteudo_id)
);

CREATE TABLE genero_midias (
    genero_midia_id INT NOT NULL AUTO_INCREMENT,
    genero_midia_nome VARCHAR(30) NOT NULL,
    PRIMARY KEY (genero_midia_id)
);

CREATE TABLE tipo_midias (
    tipo_midia_id INT NOT NULL AUTO_INCREMENT,
    tipo_midia_nome VARCHAR(30) NOT NULL,
    genero_midia_id INT NOT NULL,
    PRIMARY KEY (tipo_midia_id),
    FOREIGN KEY (genero_midia_id) REFERENCES genero_midias (genero_midia_id)
);

CREATE TABLE conteudos(
    conteudo_id INT NOT NULL AUTO_INCREMENT,
    conteudo_nome VARCHAR(100) NOT NULL,
    conteudo_faixa_etaria INT NOT NULL DEFAULT 0,
    conteudo_data_lancamento DATE NOT NULL,
    tipo_midia_id INT NOT NULL,
    desempenho_conteudo_id INT NOT NULL,
    PRIMARY KEY (conteudo_id),
    FOREIGN KEY (tipo_midia_id) REFERENCES tipo_midias (tipo_midia_id),
    FOREIGN KEY (desempenho_conteudo_id) REFERENCES desempenho_conteudo (desempenho_conteudo_id)
);

CREATE TABLE usuarios(
    usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario_nome VARCHAR(100) NOT NULL,
    usario_email VARCHAR(100) NOT NULL,
    usuario_senha VARCHAR(100) NOT NULL,
    usuario_data_ingresso DATE NOT NULL,
    usuario_media_pausas_por_conteudo_assistido FLOAT NOT NULL DEFAULT 0,
    usuario_tempo_medio_menu_principal FLOAT NOT NULL DEFAULT 0,
    usuario_total_horas_assistidas FLOAT NOT NULL DEFAULT 0,
    usuario_media_compartilhamento_conteudo FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY (usuario_id)
);

CREATE TABLE usuario_mais_assistidos (
    mais_assistido_id INT NOT NULL AUTO_INCREMENT,
    usuario_id INT NOT NULL,
    conteudo_id INT NOT NULL,
    PRIMARY KEY (mais_assistido_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN key (conteudo_id) REFERENCES conteudos (conteudo_id) 
);

DESC usuarios;
DESC usuario_mais_assistidos;
DESC conteudos;
DESC tipo_midias;
DESC genero_midias;
DESC desempenho_conteudo;