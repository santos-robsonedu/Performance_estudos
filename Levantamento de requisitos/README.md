# **Levantamento de Requisitos – Projeto: OTIMIZAÇÃO DE TEMPO DE ESTUDOS**

## **1. Prazos**
- **Estruturação para coleta e registro de dados**: 15 dias  
  - Definição do modelo de dados e banco de dados.  
  - Criação dos scripts para registro automatizado de informações.  
  - Testes iniciais de coleta.  
- **Registro de dados**: 30 dias  
  - Coleta contínua de dados sobre estudos, sono, refeições e avaliações diárias.  
  - Ajustes em caso de inconsistências.  
- **Análise exploratória inicial**: Iniciar após os 30 dias de registro  
  - Identificação de padrões iniciais.  
  - Se não houver padrões significativos, estender a coleta por mais 30 dias.  
 

## **2. Objetivo da Análise**
- **Objetivo Principal**: Validar práticas que otimizem o aprendizado, permitindo reduzir a carga horária dedicada aos estudos, mantendo ou melhorando a absorção de conteúdo.  
- **Problema a ser resolvido**: Identificar quais padrões de estudo, refeições e sono estão correlacionados com uma melhor retenção de conteúdo.  
- **Expectativas**:  
  - Identificar um padrão de sono ideal para otimizar o aprendizado.
  - Identificar um padrão ideal para refeições para otimizar o aprendizado.
  - Identificar um padrão ideal de estudo mais eficazes para otimizar o aprendizado.
 
Obs: Existem muitas outras variáveis que podem influenciar nos resultados, mas vou focar nas variáveis que posso controlar.

## **3. Avaliação da Eficácia**
- A eficácia da fixação do conhecimento será medida por meio de **um exame diário** com **10 questões de múltipla escolha (5 alternativas cada)**.
- O Resultado de cada questão será avaliado individualmente, junto com a identificação de qual assunto estudado pertence.
- As questões serão geradas automaticamente pela **API do Gemini AI**, com base no conteúdo estudado no dia.  
- O exame será realizado **ao final do dia, sem horário fixo**.  
- Após a realização do exame, **nenhum novo conteúdo será consumido** até o dia seguinte.  


## **4. Experimentos e Referências**
- **Já foi feito algo semelhante no passado?**  
  - Não, esta é a primeira versão do projeto.  
  - **Fonte de inspiração**: Livro *"Rápido e Devagar: Duas Formas de Pensar"*, de Daniel Kahneman.  

## **5. Público-Alvo e Consumo da Análise**
- **Público:** Projeto de interesse pessoal.  
- **Nível de conhecimento do público:** Total envolvimento no desenvolvimento, coleta e análise.  
- **Formato de consumo:**  
  - Desktop via **Jupyter Notebooks** para análise exploratória.  
  - Possível criação de **dashboards interativos** para melhor visualização dos insights.  

## **6. Fonte dos Dados**
- **Não há banco de dados pré-existente**, sendo necessária a criação de um **sistema de coleta e modelagem de dados**.  
- **Dados a serem registrados**:  
  - **Estudos**: Horários, assunto, descrição e fonte do conteúdo.  
  - **Sono**: Horários e interrupções do sono.
  - **Refeições**: Horários e tipo de refeição (ex.: café, almoço, janta e lanche).  
  - **Avaliações**: Tempo para respostas, assunto, perguntas e acertos nos exames diários.  
- **Infraestrutura necessária**:  
  - Banco de dados (MySQL).  
  - Scripts para automação da coleta de dados (Jupyter Notebook).  
