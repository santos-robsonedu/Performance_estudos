# Análise da Performance de Estudos: Sono, Alimentação e Resultados 🚀

[![Status: Em Desenvolvimento](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)](https://shields.io)

Este projeto explora a influência dos padrões de **estudo, sono e alimentação** no **aprendizado e retenção de conhecimento**. A inspiração central vem do livro "Rápido e Devagar: Duas Formas de Pensar" de Daniel Kahneman, que apresenta dois sistemas de pensamento: o **Sistema 1 (rápido, intuitivo e emocional)** e o **Sistema 2 (lento, deliberativo e lógico)**. Kahneman demonstra como esses sistemas influenciam nossas decisões, muitas vezes de forma inconsciente.

No contexto do livro, um estudo sobre decisões de juízes em Israel mostrou que a probabilidade de conceder liberdade condicional a prisioneiros diminuía drasticamente antes das refeições. Isso sugere que nesse período o Sistema 2 (o pensamento racional) ficava menos ativo.

A hipótese central deste projeto é que, assim como a fome impactava as decisões dos juízes, fatores como sono e alimentação podem afetar nossa capacidade de ativar o Sistema 2 e, consequentemente, nossa capacidade de absorver e reter informações.

O objetivo é identificar correlações entre padrões de **estudo, sono, alimentação** e os resultados de avaliações diárias para otimizar o processo de estudo. Será possível aprender mais estudando menos, otimizando a ativação do nosso "Sistema 2" cerebral?

## 🎯 Objetivos

Como os padrões de estudo, sono e alimentação estão correlacionados com a performance nas avaliações e a retenção de conteúdo?

## 🕒 Etapas

*   Criação da estrutura para coleta e registro de dados
*   Coleta dos dados
*   Análise exploratória inicial

## 📝 Metodologia

### Coleta de Dados

Os dados serão coletados de forma automatizada e armazenados em um banco de dados **MySQL**. As principais categorias de informações registradas serão:

*   **Estudos:** Horários, assunto, fonte do conteúdo.
*   **Sono:** Horários e interrupções.
*   **Refeições:** Horários e tipo de refeição (café, almoço, jantar, lanche).
*   **Avaliações:** Questões geradas automaticamente e respostas registradas.

### Avaliação da Eficácia

A retenção do conhecimento será avaliada por meio de um exame diário contendo 10 questões de múltipla escolha, geradas automaticamente pela **API do Gemini AI** com base no conteúdo estudado no dia.

## 🛠️ Ferramentas Utilizadas

*   **Banco de Dados:** MySQL
*   **Automação e Coleta de Dados:** Jupyter Notebook (Python)
*   **API para Geração de Questões:** Gemini AI

## 🎯 Amostragem

Este projeto é de interesse pessoal, baseado exclusivamente nos meus hábitos. As descobertas e padrões identificados refletem minha experiência pessoal e não necessariamente se aplicam a outras pessoas.

## 📚 Referências

*   Livro: Rápido e Devagar: Duas Formas de Pensar – Daniel Kahneman

## 🤝 Contribuição

Se tiver dúvidas ou sugestões, sinta-se à vontade para contribuir!
