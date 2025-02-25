-- Cria a tabela sono
CREATE TABLE sono (
    -- Identificador único do registro de sono. 
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Horário em que a pessoa foi dormir. 
    inicio TIMESTAMP NOT NULL,
    -- Horário em que a pessoa acordou
    termino TIMESTAMP NOT NULL,
    -- Número de vezes que a pessoa acordou durante a noite. 
    vezes_acordou INT NOT NULL DEFAULT 0
);