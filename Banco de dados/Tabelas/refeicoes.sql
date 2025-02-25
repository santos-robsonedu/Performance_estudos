-- Cria a tabela refeicoes
CREATE TABLE refeicoes (
    -- Identificador único do registro de refeição. 
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Horário em que a refeição começou. 
    inicio TIMESTAMP NOT NULL,
    -- Horário em que a refeição terminou.
    termino TIMESTAMP NOT NULL,
    -- Tipo de refeição (café, almoço, janta, lanche). 
    tipo VARCHAR(20) NOT NULL
    );