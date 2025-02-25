CREATE TABLE habitos.assuntos_gerais (
    -- Identificador único para cada assunto
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Descrição dos assuntos estudados
    assunto VARCHAR(255) NOT NULL
);

-- Inserindo os dados da imagem
INSERT INTO habitos.assuntos_gerais (assunto) VALUES
('Programação para Data Science (Python/R)'),
('Estatística e Probabilidade'),
('Bancos de Dados (SQL e NoSQL)'),
('Visualização de Dados (Power BI, Tableau)'),
('Machine Learning'),
('Business Intelligence'),
('Conhecimento do Negócio'),
('Metodologias Ágeis'),
('Habilidades de Comunicação'),
('Ética e Privacidade de Dados'),
('Matemática para Data Science'),
('Engenharia de Dados (ETL/Pipelines)'),
('Cloud Computing para Data Science'),
('Versionamento de Código (Git)'),
('Otimização de Performance de Modelos'),
('Segurança de Dados'),
('Deploy e Monitoramento de Modelos');