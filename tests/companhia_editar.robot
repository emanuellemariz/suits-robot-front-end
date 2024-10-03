*** Settings ***
Resource    ../resources/companhia_editar.resource

Test Setup    Logar no sistema como Admin
Test Teardown    Teardown

*** Test Cases ***
Editar cadastro de empresa com dados válidos
    Clicar em botão    ${cadastros_BUTTON}
    Clicar em botão    ${empresa_BUTTON}
    Clicar em botão    ${editar_BUTTON}
    Gerar massa de dados
    Preencher o formulário de edição com informações válidas    ${NovaRazaoSocial}    ${NovoNomeFantasia}    ${NovoEmail}    ${NovoCNPJ}    ${NovoTelefone}    ${NovaDescricao}    ${NovoNomeResponsavel}    ${NovoCEP}    ${NovoPais}    ${NovaCidade}    ${NovoEstado}    ${NovoBairro}    ${NovaRua}    ${NovoNumero}    ${NovoComplemento}