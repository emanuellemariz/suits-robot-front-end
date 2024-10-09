*** Settings ***
Resource        ../resources/login.resource

Test Setup    Acessar o site
Test Teardown    Teardown

*** Test Cases ***
Logar com email e senha corretos
    Preencher campos    ${email_INPUT}    ${email_admin}
    Preencher campos    ${senha_INPUT}    ${senha_admin}
    Clicar no botão    ${enviar_BUTTON}
    Logar com sucesso

Logar com campo Email vazio
    Preencher campos    ${senha_INPUT}    ${senha_admin}
    Clicar no botão    ${enviar_BUTTON}
    Visualizar a mensagem de erro    ${locatorErro_email/senha}    ${mensagemErro_email}

Logar com campo Senha vazio
    Preencher campos    ${email_INPUT}    ${email_admin}
    Clicar no botão    ${enviar_BUTTON}
    Visualizar a mensagem de erro    ${locatorErro_email/senha}    ${mensagemErro_senha}

Logar com email incorreto
    Preencher campos    ${email_INPUT}    ${email_incorreto}
    Preencher campos    ${senha_INPUT}    ${senha_admin}
    Clicar no botão    ${enviar_BUTTON}
    Visualizar a mensagem de erro    ${locatorErro_login}    ${mensagem_LoginInvalido}

Logar com senha incorreta
    Preencher campos    ${email_INPUT}    ${email_admin}
    Preencher campos    ${senha_INPUT}    ${senha_incorreta}
    Clicar no botão    ${enviar_BUTTON}
    Visualizar a mensagem de erro    ${locatorErro_login}    ${mensagem_LoginInvalido}