CREATE TABLE IF NOT EXISTS estado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(2) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS telefone (
	id INT AUTO_INCREMENT PRIMARY KEY,
	numero VARCHAR(15) NOT NULL,
	tipo VARCHAR(50) NOT NULL
);
    
CREATE TABLE IF NOT EXISTS cliente (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    razao_social VARCHAR(255) NOT NULL,
    estado_nome VARCHAR(2),
    FOREIGN KEY (estado_nome) REFERENCES estado(nome)
);

CREATE TABLE IF NOT EXISTS cliente_telefone (
    cliente_codigo INT,
    telefone_id INT,
    PRIMARY KEY (cliente_codigo, telefone_id),
    FOREIGN KEY (cliente_codigo) REFERENCES cliente(codigo),
    FOREIGN KEY (telefone_id) REFERENCES telefone(id)
);