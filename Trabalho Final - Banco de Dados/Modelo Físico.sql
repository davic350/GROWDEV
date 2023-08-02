CREATE DATABASE IF NOT EXISTS modelo_fisico;
USE modelo_fisico;

CREATE TABLE IF NOT EXISTS enderecos(
    endereco_id INT NOT NULL AUTO_INCREMENT,
    endereco_logradouro VARCHAR(100) NOT NULL,
    endereco_numero VARCHAR(6) NOT NULL DEFAULT 'SN',
    endereco_complemento VARCHAR(100) NOT NULL DEFAULT 'Sem complemento',
    endereco_bairro VARCHAR(100) NOT NULL,
    endereco_cidade VARCHAR(100) NOT NULL,
    PRIMARY KEY (endereco_id)
);

CREATE TABLE IF NOT EXISTS fornecedores (
    fornecedor_id INT NOT NULL AUTO_INCREMENT,
    fornecedor_nome VARCHAR(100) NOT NULL,
    fornecedor_telefones VARCHAR(14) NOT NULL,
    fornecedor_email VARCHAR(100) NOT NULL DEFAULT 'Sem email cadastrado',
    endereco_id INT NOT NULL,
    PRIMARY KEY (fornecedor_id),
    FOREIGN KEY (endereco_id) REFERENCES enderecos (endereco_id)
);

CREATE TABLE IF NOT EXISTS clientes(
    cliente_id INT NOT NULL AUTO_INCREMENT,
    cliente_nome VARCHAR(100) NOT NULL,
    cliente_telefones VARCHAR(14) NOT NULL,
    cliente_email VARCHAR(100) NOT NULL DEFAULT 'Sem email cadastrado',
    endereco_id INT NOT NULL,
    PRIMARY KEY (cliente_id),
    FOREIGN KEY (endereco_id) REFERENCES enderecos (endereco_id)
);

CREATE TABLE IF NOT EXISTS formas_pagamentos(
    forma_pagamento_id INT NOT NULL AUTO_INCREMENT,
    forma_pagamento_nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (forma_pagamento_id)
);

CREATE TABLE IF NOT EXISTS vendas (
    venda_id INT NOT NULL AUTO_INCREMENT,
    venda_quantidade INT NOT NULL,
    venda_valor_total FLOAT NOT NULL,
    venda_data DATETIME NOT NULL,
    cliente_id INT NOT NULL,
    forma_pagamento_id INT NOT NULL,
    PRIMARY KEY (venda_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
    FOREIGN KEY (forma_pagamento_id) REFERENCES formas_pagamentos (forma_pagamento_id)
);

CREATE TABLE IF NOT EXISTS  camisetas (
    camiseta_id INT NOT NULL AUTO_INCREMENT,
    camiseta_modelo VARCHAR(45) NOT NULL,
    camiseta_quantidade INT NOT NULL,
    venda_id INT NOT NULL,
    PRIMARY KEY (camiseta_id),
    FOREIGN KEY (venda_id) REFERENCES vendas (venda_id)
);

DESC fornecedores;
DESC enderecos;
DESC clientes;
DESC vendas;
DESC formas_pagamentos;
DESC camisetas;