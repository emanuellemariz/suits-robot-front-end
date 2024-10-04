*** Settings ***
Library        SeleniumLibrary
Library    Screenshot

*** Variables ***
# Massa de testes
${LOGIN_URL}    https://automacao.qacoders.dev.br/login
${email_admin}    sysadmin@qacoders.com
${senha_admin}    1234@Test
${email_incorreto}     sysadmin@qacoders
${senha_incorreta}    12345
${mensagemErro_email}    O email é obrigatório
${mensagemErro_senha}    A senha é obrigatória
${mensagem_LoginInvalido}    E-mail ou senha informados são inválidos

#  Locators
${email_INPUT}    id=email
${senha_INPUT}    id=password
${enviar_BUTTON}    css=button#login
${logout_BUTTON}    css=button.css-1nvbq2d
${locatorErro_email/senha}    css=p.css-18xtib3  
${locatorErro_login}     xpath=//div[@role="alert"]//div[2]

${timeout}    5

*** Keywords ***
Acessar o site
    Open Browser    url=${LOGIN_URL}    browser=headlesschrome
    Maximize Browser Window
Teardown
    Close Browser
Preencher campos
    [Arguments]    ${campo}    ${texto}
    Wait Until Element Is Visible    locator=${campo}    timeout=${timeout}
    Input Text    locator=${campo}    text=${texto}

Clicar no botão
    [Arguments]    ${botao}
    Wait Until Element Is Visible    locator=${botao}
    Click Element    locator=${botao}

Logar com sucesso
    # Assert
    Wait Until Element Is Visible    locator=${logout_BUTTON}    timeout=${timeout}

Visualizar a mensagem de erro
    [Arguments]    ${locator}    ${mensagem_erro}
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    ${text}    Get Text    locator=${locator}
    Should Be Equal As Strings    ${text}    ${mensagem_erro}  #  Assert