*** Settings ***
Library        SeleniumLibrary
Library    Screenshot

*** Variables ***
${LOGIN_URL}    https://automacao.qacoders-academy.com.br/login
${email_admin}    sysadmin@qacoders.com
${senha_admin}    1234@Test

#  Locators
${email_INPUT}    id=email
${senha_INPUT}    id=password
${enviar_BUTTON}    css=button#login
${cadastros_BUTTON}    id=Cadastros
${usuarios_BUTTON}    xpath=//span[text()="Usuários"]
${usuarios_LIST}    css=li.css-iatckd
${cadastroNovo_BUTTON}    id=Novo Cadastro
${popup_TITLE}    css=h5.css-np5g2k

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

Clicar em Cadastros
    Wait Until Element Is Visible    locator=${cadastros_BUTTON}    timeout=${timeout}
    Click Element    locator=${cadastros_BUTTON}

Clicar em Usuários
    Wait Until Element Is Visible    locator=${usuarios_BUTTON}    timeout=${timeout}
    Click Element    locator=${usuarios_BUTTON}

Verificar que a paginação tem 50 registros
    Wait Until Element Is Visible    locator=${usuarios_LIST}    timeout=${timeout}
    ${contagem_usuarios}    Get Element Count    locator=${usuarios_LIST}
    ${contagem_convertido}    Convert To Integer    50
    Should Be Equal    ${contagem_usuarios}    ${contagem_convertido}

Clicar no botão Novo Cadastro
    Wait Until Element Is Visible    locator=${cadastroNovo_BUTTON}    timeout=${timeout}
    Click Element    locator=${cadastroNovo_BUTTON}

Visualizar pop-up de Novo Cadastro
    Wait Until Element Is Visible    locator=${popup_TITLE}    timeout=${timeout}
    Capture Page Screenshot