*** Settings ***
Resource        ../resources/usuarios.resource

Test Setup    Logar no sistema como Admin
Test Teardown    Teardown

*** Test Cases ***

# Validar paginação de 50 usuários
#     Clicar em Cadastros
#     Clicar em Usuários
#     Verificar que a paginação tem 50 registros

Validar funcionamento do botão para Novo registro
    Clicar em Cadastros
    Clicar em Usuários
    Clicar no botão Novo Cadastro
    Visualizar pop-up de Novo Cadastro