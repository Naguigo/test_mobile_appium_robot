*** Settings ***
Library    AppiumLibrary
*** Variables ***
${NOME_FIELD}        id=com.example.testapp:id/name
${EMAIL_FIELD}       id=com.example.testapp:id/email
${MSG_FREE}          id=com.example.testapp:id/message
${ENVIAR_BUTTON}     id=com.example.testapp:id/submitBtn
${TOAST_TEXTO}       Formulário enviado com sucesso!

*** Keywords ***
Preencher nome
    [Arguments]    ${nome}
    Input Text    ${NOME_FIELD}    ${nome}

Preencher email
    [Arguments]    ${email}
    Input Text    ${EMAIL_FIELD}    ${email}

Preencher msglivre
    [Arguments]    ${msglivre}    
    Input Text    ${MSG_FREE}     ${msglivre}

Enviar formulário
    Click Element    ${ENVIAR_BUTTON}
    Sleep    1s    # Dá tempo do toast aparecer

Validar envio com sucesso
    Wait Until Keyword Succeeds    5x    1s    Verificar toast com texto    ${TOAST_TEXTO}

Verificar toast com texto
    [Arguments]    ${mensagem}
    ${page_source}=    Get Source
    Log    ${page_source}
    Should Contain    ${page_source}    ${mensagem}
