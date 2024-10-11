# Testes de Front-end com Robot Framework 

Este repositório contém testes automatizados para algumas funcionalidade do site para automação do Qa.Coders, utilizando o **Robot Framework**. Os testes cobrem diferentes funcionalidades relacionadas ao Login, Edição de dados de Empresa e Usuários.
## Estrutura do Projeto

- **/tests**: Contém os arquivos de teste escritos no formato do Robot Framework.
- **/resources**: Inclui arquivos de suporte, como variáveis, configurações e dados de teste.
- **/keywords**: Contém as keywords customizadas utilizadas nos testes, escritas em Robot Framework.

## Pré-requisitos

Antes de rodar os testes, certifique-se de que tem as seguintes ferramentas instaladas:

- [Python 3.x](https://www.python.org/downloads/)
- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary para Robot Framework]

Para instalar as dependências:

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

### Executando os Testes

Para executar todos os testes:

```bash
robot -d ./results tests/
```
