*** Settings ***
Library           AppiumLibrary
Library    ../load_env.py
Resource          ../pages/FormPage.robot
Resource    ../resources/keywords.robot
Resource    ../pages/LoginPage.robot

#Suite Setup       Abrir Aplicativo
Suite Teardown    Fechar Aplicativo


*** Test Cases ***
Fazer login com sucesso
    Preencher usuário    user
    Preencher senha      password
    Clicar login
    Sleep                2s
    Validar login bem-sucedido


Preencher e enviar formulário
    Preencher nome      Nathan Guilherme
    Preencher email     nathan.gomes@teste.com
    Preencher msglivre   Escrevendo aqui para teste
    Sleep                2s
    Enviar formulário
    Validar envio com sucesso