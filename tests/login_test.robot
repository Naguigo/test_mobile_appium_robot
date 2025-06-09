*** Settings ***
Library           AppiumLibrary
Library    ../load_env.py
Resource          ../pages/LoginPage.robot
Resource    ../resources/keywords.robot

#Suite Setup       Abrir Aplicativo
Suite Teardown    Fechar Aplicativo

*** Test Cases ***
Login com sucesso
    Preencher usuário    user
    Preencher senha      password
    Clicar login
    Sleep                3s
    Validar login bem-sucedido