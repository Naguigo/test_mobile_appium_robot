*** Settings ***
Library    OperatingSystem
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL_LOCAL}       http://localhost:4723
${REMOTE_URL_BSTACK}      https://hub-cloud.browserstack.com/wd/hub

${DEVICE_LOCAL}           emulator-5554
${OS_VERSION_LOCAL}       16.0
${APP_LOCAL}              /Users/nathanguilherme/Desktop/app-debug.apk

*** Keywords ***
# Abrir Aplicativo
#     ${TEST_ENV}    Get Environment Variable    TEST_ENV
#     Run Keyword If    '${TEST_ENV}' == 'local'         Abrir Aplicativo Local
#     ...               ELSE IF    '${TEST_ENV}' == 'browserstack'    Abrir Aplicativo BrowserStack
#     ...               ELSE    Fail    Variável TEST_ENV inválida: ${TEST_ENV}

# Abrir Aplicativo Local
#     Open Application    ${REMOTE_URL_LOCAL}
#     ...    platformName=Android
#     ...    deviceName=${DEVICE_LOCAL}
#     ...    platformVersion=${OS_VERSION_LOCAL}
#     ...    app=${APP_LOCAL}
#     ...    automationName=UiAutomator2

Abrir Aplicativo
    Open Application    ${REMOTE_URL_BSTACK}
    # ❗NÃO definir capabilities aqui — o SDK do BrowserStack cuida disso via browserstack.yml

Fechar Aplicativo
    Close Application
