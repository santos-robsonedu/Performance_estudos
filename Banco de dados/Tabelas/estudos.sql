-- Criando a tabela de estudos com a chave estrangeira
CREATE TABLE habitos.estudos (
    -- id: Chave primária da tabela. Identificador único para cada assunto estudado.
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- inicio: Timestamp que indica a hora de início do estudo.
    inicio TIMESTAMP NOT NULL,
    -- termino: Timestamp que indica a hora de término do estudo.
    termino TIMESTAMP NOT NULL,
    -- id_assunto: Chave estrangeira referenciando a tabela de assuntos_gerais.
    id_assunto INT NOT NULL,
    -- descricao: Descrição do conteúdo sendo estudado
    descricao VARCHAR(255) NOT NULL,
    -- fonte: Fonte do conteúdo estudado (livro,artigo,url,etc...)
    fonte VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_assunto) REFERENCES habitos.assuntos_gerais(id)
);
