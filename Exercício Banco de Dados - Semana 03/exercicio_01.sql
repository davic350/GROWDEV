CREATE DATABASE IF NOT EXISTS exercicio_01

USE exercicio_01

CREATE TABLE produtos (
    produto_id INT NOT NULL AUTO_INCREMENT,
    produto_nome VARCHAR(100) NOT NULL,
    produto_quantidade INT NOT NULL DEFAULT 1,
    produto_valor FLOAT NOT NULL,
    produto_valor_imposto FLOAT NOT NULL DEFAULT 0,
    produto_custo FLOAT NOT NULL DEFAULT 0,
    PRIMARY KEY (produto_id)
);

CREATE TABLE clientes (
    cliente_id INT NOT NULL AUTO_INCREMENT,
    cliente_nome VARCHAR(100) NOT NULL,
    cliente_email VARCHAR(100) NOT NULL,
    cliente_telefone VARCHAR(11) NOT NULL DEFAULT 0,
    cliente_cpf VARCHAR(13) NOT NULL,
    PRIMARY KEY(cliente_id)
);

CREATE TABLE modos_pagamentos (
    modo_pagamento_id INT NOT NULL AUTO_INCREMENT,
    modo_pagamento_nome VARCHAR(10) NOT NULL,
    PRIMARY KEY(modo_pagamento_id)
);

CREATE TABLE vendas (
    venda_id INT NOT NULL AUTO_INCREMENT,
    venda_valor FLOAT NOT NULL,
    venda_data DATETIME NOT NULL,
    venda_brinde BOOLEAN NOT NULL,
    modo_pagamento_id INT NOT NULL,
    cliente_id INT NOT NULL,
    PRIMARY KEY (venda_id),
    FOREIGN KEY (modo_pagamento_id) REFERENCES modos_pagamentos(modo_pagamento_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id) 
);

CREATE TABLE enderecos (
    endereco_id INT NOT NULL AUTO_INCREMENT,
    cliente_id INT NOT NULL,
    endereco_logradouro VARCHAR(100) NOT NULL,
    endereco_numero VARCHAR(6) NOT NULL DEFAULT 'sn',
    endereco_cidade VARCHAR(50) NOT NULL,
    endreco_estado VARCHAR(30) NOT NULL,
    PRIMARY KEY (endereco_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

CREATE TABLE pedidos (
    pedido_id INT NOT NULL AUTO_INCREMENT,
    pedido_quantidade_produto INT NOT NULL,
    produto_id INT NOT NULL,
    venda_id INT NOT NULL,
    PRIMARY KEY (pedido_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id)
);

DESC  produtos ;
DESC pedidos ;
DESC vendas ;
DESC modos_pagamentos ;
DESC clientes ;
DESC enderecos;