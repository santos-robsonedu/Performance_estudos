# Esquema do Banco de Dados: `habitos`

Este documento detalha o esquema do banco de dados `habitos`, incluindo a descrição das tabelas, suas colunas e os relacionamentos entre elas. O objetivo é fornecer uma visão clara da estrutura de dados utilizada no projeto de otimização do tempo de estudos.

## Visão Geral do Esquema

O esquema `habitos` é composto por cinco tabelas principais:

*   **`sono`:** Armazena informações sobre o sono.
*   **`refeicoes`:** Armazena informações sobre as refeições.
*   **`assuntos_gerais`:** Armazena a lista de assuntos gerais estudados.
*   **`estudos`:** Armazena informações sobre as sessões de estudo.
*   **`notas`:** Armazena informações sobre os testes e avaliações.

As tabelas `sono` e `refeicoes` são relacionadas por datas, permitindo a análise da influência do sono e da alimentação no desempenho dos estudos. As tabelas `assuntos_gerais`, `estudos` e `notas` estão interligadas para rastrear o progresso do aprendizado em diferentes áreas de conhecimento.

## Descrição das Tabelas

### 1. Tabela `sono`

**Propósito:** Armazenar informações sobre os períodos de sono.

**Colunas:**

| Coluna        | Tipo        | Descrição                                                                                                                                                                                                                           | Restrições                               |
| ------------- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------- |
| `id`          | INT         | Identificador único do registro de sono.                                                                                                                                                                                             | PRIMARY KEY, AUTO_INCREMENT              |
| `inicio`      | TIMESTAMP   | Horário em que a pessoa foi dormir.                                                                                                                                                                                                | NOT NULL                               |
| `termino`     | TIMESTAMP   | Horário em que a pessoa acordou.                                                                                                                                                                                                  | NOT NULL                               |
| `vezes_acordou` | INT         | Número de vezes que a pessoa acordou durante a noite.                                                                                                                                                                        | DEFAULT NULL                        |

**Exemplo de Uso:**

Registrar a hora de dormir, a hora de acordar e quantas vezes a pessoa acordou durante a noite para analisar a relação entre o sono e o desempenho nos estudos.

### 2. Tabela `refeicoes`

**Propósito:** Armazenar informações sobre as refeições.

**Colunas:**

| Coluna       | Tipo        | Descrição                                                                                                                                                                                                                     | Restrições                  |
| ------------ | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| `id`         | INT         | Identificador único do registro de refeição.                                                                                                                                                                                | PRIMARY KEY, AUTO_INCREMENT |
| `inicio`     | TIMESTAMP   | Horário em que a refeição começou.                                                                                                                                                                                          | NOT NULL                    |
| `termino`    | TIMESTAMP   | Horário em que a refeição terminou.                                                                                                                                                                                         | NOT NULL                    |
| `tipo`       | VARCHAR(20) | Tipo de refeição (café, almoço, janta, lanche).                                                                                                                                                                               | NOT NULL                    |


**Exemplo de Uso:**

Registrar o horário das refeições e o tipo de refeição para analisar a relação entre a alimentação e o desempenho nos estudos.

### 3. Tabela `assuntos_gerais`

**Propósito:** Armazenar a lista de assuntos gerais estudados.

**Colunas:**

| Coluna   | Tipo        | Descrição                                                                                                                                                               | Restrições                  |
| -------- | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| `id`     | INT         | Identificador único para cada assunto.                                                                                                                                      | PRIMARY KEY, AUTO_INCREMENT |
| `assunto` | VARCHAR(255) | Categorias dos assuntos estudados (ex: Programação, Estatística).                                                                                                                                          | NOT NULL                    |

**Exemplo de Uso:**

Manter uma lista com a categoria dos assuntos que estão sendo estudados, permitindo uma organização e categorização mais eficiente.

### 4. Tabela `estudos`

**Propósito:** Armazenar informações sobre as sessões de estudo.

**Colunas:**

| Coluna       | Tipo        | Descrição                                                                                                                                                                                                                                                                                 | Restrições                  |
| ------------ | ----------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| `id`         | INT         | Chave primária da tabela. Identificador único para cada assunto estudado.                                                                                                                                                                                                                | PRIMARY KEY, AUTO_INCREMENT |
| `inicio`     | TIMESTAMP   | Timestamp que indica a hora de início do estudo.                                                                                                                                                                                                                                          |     NOT NULL                        |
| `termino`    | TIMESTAMP   | Timestamp que indica a hora de término do estudo.                                                                                                                                                                                                                                         |         NOT NULL                    |
| `id_assunto` | INT         | Chave estrangeira referenciando a tabela de `assuntos_gerais`.                                                                                                                                                                                                                         | FOREIGN KEY, NOT NULL       |
| `descricao`  | VARCHAR(255) | Descrição do conteúdo sendo estudado.                                                                                                                                                                                                                                                   |                NOT NULL             |
| `fonte`      | VARCHAR(255) | Fonte do conteúdo estudado (livro, artigo, URL, etc.).                                                                                                                                                                                                                                 |                   NOT NULL          | |

**Exemplo de Uso:**

Registrar quando um assunto foi estudado, por quanto tempo e qual a fonte do material para analisar a eficiência dos diferentes métodos de estudo.

### 5. Tabela `notas`

**Propósito:** Armazenar informações sobre os testes e avaliações.

**Colunas:**

| Coluna    | Tipo        | Descrição                                                                                                                                                                      | Restrições           |
| --------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------- |
| `id`      | INT         | Chave primária da tabela. Identificador único para cada resposta.                                                                                                                  | PRIMARY KEY, AUTO_INCREMENT |
| `inicio`  | TIMESTAMP   | Timestamp que indica a hora de início da resposta à pergunta.                                                                                                                   |    NOT NULL                |
| `termino` | TIMESTAMP   | Timestamp que indica a hora de término da resposta à pergunta.                                                                                                                  |     NOT NULL               |
| `id_estudo` | INT         | Chave estrangeira referenciando a tabela de `estudos`.                                                                                                                            | FOREIGN KEY, NOT NULL |
| `pergunta`  | INT         | Número da pergunta (1 a 10).                                                                                                                                                            |      NOT NULL              |
| `acerto`    | INT         | Indica se a resposta está correta (1) ou incorreta (0).                                                                                                                            |     NOT NULL               |


**Exemplo de Uso:**

Registrar o resultado de cada teste, o tempo gasto em cada pergunta e com qual registro de estudo está relacionado.

## Relacionamentos entre as Tabelas

1.  **Relação entre `estudos` e `assuntos_gerais`:**
    *   Um assunto em `assuntos_gerais` pode estar associado a múltiplos registros em `estudos` (relação um-para-muitos).
    *   A coluna `id_assunto` em `estudos` é uma chave estrangeira que referencia a coluna `id` em `assuntos_gerais`.

2.  **Relação entre `notas` e `estudos`:**
    *   Um registro em `estudos` pode estar associado a múltiplos registros em `notas` (relação um-para-muitos).
    *   A coluna `id_estudo` em `notas` é uma chave estrangeira que referencia a coluna `id` em `estudos`.

3.  **Relação entre `sono` e `refeicoes` (por data):**
    *   Não existe uma chave estrangeira direta entre essas tabelas. O relacionamento é implícito, baseado na data do registro. Análises podem ser feitas correlacionando registros de `sono` e `refeicoes` que ocorrem no mesmo dia. Por exemplo, para verificar se a qualidade do sono está relacionada ao tipo de refeição feita no dia anterior.


## Considerações Adicionais

*   **Normalização:** O esquema foi projetado para evitar redundância de dados e garantir a integridade.
*   **Tipos de Dados:** Os tipos de dados foram escolhidos para otimizar o armazenamento e o desempenho das consultas.



Este documento fornece uma base sólida para entender e utilizar o banco de dados `habitos`. À medida que o projeto avança, este esquema pode ser revisado e aprimorado para atender às necessidades em constante mudança.