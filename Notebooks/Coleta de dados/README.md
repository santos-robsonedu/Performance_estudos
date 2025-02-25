# Instruções para uso dos Scripts
![janela_estudos](https://github.com/user-attachments/assets/674939e5-b431-4346-b707-58ed139da98f)

## estudos.ipynb

1. **Descrição**: Conteúdo que está sendo estudado. Ex: Pandas e Numpy para Data Science.  
   - Na tabela `estudos` será gravado na coluna `descricao`.

2. **Fonte**: A fonte onde o conteúdo se encontra. Ex: www.kaggle.com.  
   - Na tabela `estudos` será gravado na coluna `fonte`.

3. **Classificar Assunto**: Usa a API do GEMINI AI para classificar o conteúdo conforme as opções na tabela `assuntos_gerais`. Exemplo: ID: 1 ; Assunto: Programação para Data Science (Python/R).  
   - Na tabela `estudos` será gravado na coluna `id_assunto`.

4. **Iniciar Estudo**: Captura o timestamp do início do estudo. Exemplo: `2025-01-01 12:00:00`.  
   - Na tabela `estudos` será gravado na coluna `inicio`.

5. **Encerrar Estudo**: Captura o timestamp do término do estudo. Exemplo: `2025-01-01 12:30:00`.  
   - Na tabela `estudos` será gravado na coluna `termino`.
   - Ao clicar em "Encerrar Estudo", todos os dados serão gravados em uma nova linha na tabela `estudos`. A coluna `id`, sendo chave primária, será preenchida automaticamente pelo MySQL.

6. **Gerar Avaliação**: Gera um questionário de 10 perguntas com 5 alternativas baseado no conteúdo estudado no dia, usando a API do GEMINI AI.
   - **Questão 1**: Cada questão terá um número (1 a 10).  
     - Na tabela `notas` será gravado na coluna `pergunta`.
   - **Id 1**: Cada questão será vinculada ao registro de estudo correspondente.  
     - Na tabela `notas` será gravado na coluna `id_estudo`.
   - **Alternativas**: O script indicará se a resposta está correta ou não (1 para acerto, 0 para erro).  
     - Na tabela `notas` será gravado na coluna `acerto`.
   - **Enviar Resposta**: O script registra o timestamp do início ao gerar a pergunta e o timestamp de término ao enviar a resposta, permitindo calcular o tempo de resposta.  
     - Na tabela `notas`, os valores serão gravados nas colunas `inicio` e `termino`.
   - Ao finalizar todas as perguntas, os dados serão gravados na tabela `notas`, com cada pergunta sendo registrada em uma nova linha. A coluna `id`, sendo chave primária, será preenchida automaticamente pelo MySQL.

---

## refeicoes.ipynb

1. **Hora de Início**: Registra o horário de início da refeição.  
   - Na tabela `refeicoes` será gravado na coluna `inicio`.

2. **Hora de Término**: Registra o horário de término da refeição.  
   - Na tabela `refeicoes` será gravado na coluna `termino`.

3. **Tipo de Refeição**: Selecionado entre as opções: café, almoço, janta e lanche.  
   - Na tabela `refeicoes` será gravado na coluna `tipo`.

4. **Salvar Registro de Refeição**: Ao clicar no botão, os dados serão gravados em uma nova linha na tabela `refeicoes`. A coluna `id`, sendo chave primária, será preenchida automaticamente pelo MySQL.

---

## sono.ipynb

1. **Hora de Início**: Registra o horário de início do período de sono.  
   - Na tabela `sono` será gravado na coluna `inicio`.

2. **Hora de Término**: Registra o horário de término do período de sono.  
   - Na tabela `sono` será gravado na coluna `termino`.

3. **Vezes que Acordou**: Registra quantas interrupções ocorreram no período de sono.  
   - Na tabela `sono` será gravado na coluna `vezes_acordou`.

4. **Salvar Registro de Sono**: Ao clicar no botão, os dados serão gravados em uma nova linha na tabela `sono`. A coluna `id`, sendo chave primária, será preenchida automaticamente pelo MySQL.
