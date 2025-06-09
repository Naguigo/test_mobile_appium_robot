*** Settings ***
Library    ../venv/lib/python3.13/site-packages/AppiumLibrary/__init__.py
*** Variables ***
${USERNAME_FIELD}    id=com.example.testapp:id/username
${PASSWORD_FIELD}    id=com.example.testapp:id/password
${LOGIN_BUTTON}      id=com.example.testapp:id/loginBtn
${SUCCESS_MSG}       id=com.example.testapp:id/message

*** Keywords ***
Preencher usuário
    [Arguments]    ${user}
    Input Text    ${USERNAME_FIELD}    ${user}

Preencher senha
    [Arguments]    ${senha}
    Input Text    ${PASSWORD_FIELD}    ${senha}

Clicar login
    Click Element    ${LOGIN_BUTTON}

Validar login bem-sucedido
    Element Should Be Visible    ${SUCCESS_MSG}