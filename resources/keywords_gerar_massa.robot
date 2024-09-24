*** Settings ***
Documentation    Arquivo com keywords de geração de massas   
Library    String

*** Keywords ***
gerar_company_name
    ${nome} =     Generate Random String    10    [LETTERS][NUMBERS]
    ${sobrenome} =    Generate Random String    10    [LETTERS]
    ${nome_composto} =    Catenate    ${nome}    ${sobrenome}
    ${novo_CompanyName} =    Evaluate    "${nome_composto}".title()
    RETURN   ${novo_CompanyName}

gerar_email_aleatorio
    ${nome} =     Generate Random String    10    [LOWER]
    ${dominio} =    Set Variable    @example.com
    ${email_personalizado} =    Catenate    ${nome}${dominio}
    RETURN    ${email_personalizado}

gerar_cnpj_aleatorio
    ${cnpj} =     Generate Random String    14    [NUMBERS]
    RETURN    ${cnpj}

gerar_cep_aleatorio
    ${cep} =     Generate Random String    8    [NUMBERS]
    RETURN    ${cep}

gerar_telefone_aleatorio
    ${numero} =     Generate Random String    15    [NUMBERS]
    RETURN    ${numero}

gerar_nome_responsavel
    ${nome} =     Generate Random String    10    [LETTERS]
    ${sobrenome} =    Generate Random String    10    [LETTERS]
    ${nome_composto} =    Catenate    ${nome}    ${sobrenome}
    ${novo_CompanyName} =    Evaluate    "${nome_composto}".title()
    RETURN   ${novo_CompanyName}

gerar_numero_aleatorio
    ${numero}    Generate Random String    3    [NUMBERS]
    RETURN    ${numero}

gerar_nome__aleatorio
    ${nome} =     Generate Random String    5    [LOWER]
    ${nome_personalizado} =    Evaluate    "${nome}".title()
    RETURN    ${nome_personalizado}
