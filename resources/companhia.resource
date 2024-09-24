*** Settings ***
Library    SeleniumLibrary
Library    Screenshot

Resource    ../resources/keywords_gerar_massa.robot

*** Variables ***
${LOGIN_URL}    https://automacao.qacoders-academy.com.br/login
${email_admin}    sysadmin@qacoders.com
${senha_admin}    1234@Test

#  Locators
${email_INPUT}    id=email
${senha_INPUT}    id=password
${enviar_BUTTON}    css=button#login
${cadastros_BUTTON}    id=Cadastros
${empresa_BUTTON}    id=Empresa
${editar_BUTTON}    id=edit
# Locators Formulário
${razaoSocial_INPUT}    id=companyName
${nomeFantasia_INPUT}    id=fantasyName
${empresaEmail_INPUT}    id=companyMail
${cnpj_INPUT}    id=matriz
${telefone_INPUT}    id=telephone
${descricao_INPUT}    id=serviceDescription
${nomeCompleto_INPUT}    id=fullName
${cep_INPUT}    id=zipCode
${pais_INPUT}    id=country
${cidade_INPUT}    id=city
${estado_INPUT}    id=state
${bairro_INPUT}    id=district
${rua_INPUT}    id=street
${numero_INPUT}    id=number
${complemento_INPUT}    id=complement
${salvar_BUTTON}    id=save

#  Massa aleatória para formulário
${NovaRazaoSocial}    
${NovoNomeFantasia}
${NovoEmail}
${NovoCNPJ}
${NovoTelefone}
${NovaDescricao}
${NovoNomeResponsavel}
${NovoCEP}
${NovoPais}
${NovaCidade}
${NovoEstado}
${NovoBairro}
${NovaRua}
${NovoNumero}
${NovoComplemento}

${timeout}    5

*** Keywords ***
Logar no sistema como Admin 
    Open Browser    browser=Chrome
    Maximize Browser Window
    Go To    url=${LOGIN_URL}
    Wait Until Element Is Visible    locator=${email_INPUT}    timeout=${timeout}
    Input Text    locator=${email_INPUT}    text=${email_admin}
    Wait Until Element Is Visible    locator=${senha_INPUT}    timeout=${timeout}
    Input Text    locator=${senha_INPUT}    text=${senha_admin}
    Click Element    locator=${enviar_BUTTON}
    
Teardown
    Close Browser

Clicar em botão
    [Arguments]    ${locator}
    Wait Until Element Is Visible    locator=${locator}    timeout=${timeout}
    Click Element    locator=${locator}

Gerar massa de dados
    ${RazaoSocial}    gerar_company_name
    Set Global Variable    ${NovaRazaoSocial}    ${RazaoSocial}
    ${NomeFantasia}    gerar_company_name
    Set Global Variable    ${NovoNomeFantasia}    ${NomeFantasia}
    ${Email}    gerar_email_aleatorio
    Set Global Variable    ${NovoEmail}    ${Email}
    ${CNPJ}    gerar_cnpj_aleatorio
    Set Global Variable    ${NovoCNPJ}    ${CNPJ}
    ${Telefone}    gerar_telefone_aleatorio
    Set Global Variable    ${NovoTelefone}    ${Telefone}
    ${Descricao}    gerar_company_name
    Set Global Variable    ${NovaDescricao}    ${Descricao}
    ${NomeResponsavel}    gerar_nome_responsavel
    Set Global Variable    ${NovoNomeResponsavel}    ${NomeResponsavel}
    ${CEP}    gerar_cep_aleatorio
    Set Global Variable    ${NovoCEP}    ${CEP}
    ${Pais}    gerar_nome__aleatorio
    Set Global Variable    ${NovoPais}    ${Pais}
    ${Cidade}    gerar_nome__aleatorio
    Set Global Variable    ${NovaCidade}    ${Cidade}
    ${Estado}    gerar_nome__aleatorio
    Set Global Variable    ${NovoEstado}    ${Estado}
    ${Bairro}    gerar_nome__aleatorio
    Set Global Variable    ${NovoBairro}    ${Bairro}
    ${Rua}    gerar_nome_responsavel
    Set Global Variable    ${NovaRua}    ${Rua}
    ${Numero}    gerar_numero_aleatorio
    Set Global Variable    ${NovoNumero}    ${Numero}
    ${Complemento}    gerar_nome_responsavel
    Set Global Variable    ${NovoComplemento}    ${Complemento}

Preencher o formulário de edição com informações válidas
    [Arguments]    ${razaoSocial_TEXT}    ${nomeFantasia_TEXT}    ${empresaEmail_TEXT}    ${cnpj_TEXT}    ${telefone_TEXT}    ${descricao_TEXT}    ${nomeCompleto_TEXT}    ${cep_TEXT}    ${pais_TEXT}    ${cidade_TEXT}    ${estado_TEXT}    ${bairro_TEXT}    ${rua_TEXT}    ${numero_TEXT}    ${complemento_TEXT}

    Wait Until Element Is Visible    locator=${razaoSocial_INPUT}    timeout=${timeout}
    Clear Element Text    ${razaoSocial_INPUT}
    Input Text    ${razaoSocial_INPUT}    ${razaoSocial_TEXT}
    Clear Element Text    ${nomeFantasia_INPUT}
    Input Text    ${nomeFantasia_INPUT}    ${nomeFantasia_INPUT}
    Clear Element Text    ${empresaEmail_INPUT}
    Input Text    ${empresaEmail_INPUT}    ${empresaEmail_TEXT}
    Clear Element Text    ${cnpj_INPUT}
    Input Text    ${cnpj_INPUT}    ${cnpj_TEXT}
    Clear Element Text    ${telefone_INPUT}
    Input Text    ${telefone_INPUT}    ${telefone_TEXT}
    Clear Element Text    ${descricao_INPUT}
    Input Text    ${descricao_INPUT}    ${descricao_TEXT}
    Clear Element Text    ${nomeCompleto_INPUT}
    Input Text    ${nomeCompleto_INPUT}    ${nomeCompleto_TEXT}
    Clear Element Text    ${cep_INPUT}
    Input Text    ${cep_INPUT}    ${cep_TEXT}
    Clear Element Text    ${pais_INPUT}
    Input Text    ${pais_INPUT}    ${pais_TEXT}
    Clear Element Text    ${cidade_INPUT}
    Input Text    ${cidade_INPUT}    ${cidade_TEXT}
    Clear Element Text    ${estado_INPUT}
    Input Text    ${estado_INPUT}    ${estado_TEXT}
    Clear Element Text    ${bairro_INPUT}
    Input Text    ${bairro_INPUT}    ${bairro_TEXT}
    Clear Element Text    ${rua_INPUT}
    Input Text    ${rua_INPUT}    ${rua_TEXT}
    Clear Element Text    ${numero_INPUT}
    Input Text    ${numero_INPUT}    ${numero_TEXT}
    Clear Element Text    ${complemento_INPUT}
    Input Text    ${complemento_INPUT}    ${complemento_TEXT}
    Click Button    ${salvar_BUTTON}
