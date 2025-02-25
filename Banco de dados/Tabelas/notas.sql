CREATE TABLE habitos.notas (
    -- id: Chave primária da tabela. Identificador único para cada resposta.
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- inicio: Timestamp que indica a hora de início da resposta à pergunta.
    inicio TIMESTAMP NOT NULL,
    -- termino: Timestamp que indica a hora de término da resposta à pergunta.
    termino TIMESTAMP NOT NULL,
    -- id_estudo: Chave estrangeira referenciando a tabela de estudos.
    id_estudo INT NOT NULL,
    -- pergunta: Número da pergunta.
    pergunta INT NOT NULL,
    -- acerto: Indica se a resposta está correta (1) ou incorreta (0).
    acerto INT NOT NULL,
    FOREIGN KEY (id_estudo) REFERENCES habitos.estudos(id)
);
