
*** Settings ***
Library    OperatingSystem
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL_LOCAL}       http://localhost:4723
${REMOTE_URL_BSTACK}      https://hub-cloud.browserstack.com/wd/hub
${DEVICE_LOCAL}           emulator-5554
${DEVICE_BSTACK}          Google Pixel 6
${OS_VERSION_LOCAL}       16.0
${OS_VERSION_BSTACK}      12.0
${APP_LOCAL}              /Users/nathanguilherme/Desktop/app-debug.apk

*** Keywords ***
Abrir Aplicativo
    ${TEST_ENV}    Get Environment Variable    TEST_ENV
    Run Keyword If    '${TEST_ENV}' == 'local'         Abrir Aplicativo Local
    ...               ELSE IF    '${TEST_ENV}' == 'browserstack'    Abrir Aplicativo BrowserStack
    ...               ELSE    Fail    Variável TEST_ENV inválida: ${TEST_ENV}

Abrir Aplicativo Local
    Open Application    ${REMOTE_URL_LOCAL}
    ...    platformName=Android
    ...    deviceName=${DEVICE_LOCAL}
    ...    platformVersion=${OS_VERSION_LOCAL}
    ...    app=${APP_LOCAL}
    ...    automationName=UiAutomator2

Abrir Aplicativo BrowserStack
    ${BROWSERSTACK_USERNAME}    Get Environment Variable    BROWSERSTACK_USERNAME
    ${BROWSERSTACK_ACCESS_KEY}  Get Environment Variable    BROWSERSTACK_ACCESS_KEY
    ${BROWSERSTACK_APP}         Get Environment Variable    BROWSERSTACK_APP
    Log    USER: ${BROWSERSTACK_USERNAME}
    Log    KEY: ${BROWSERSTACK_ACCESS_KEY}
    Log    APP: ${BROWSERSTACK_APP}

    Open Application    ${REMOTE_URL_BSTACK}
    ...    platformName=Android
    ...    deviceName=${DEVICE_BSTACK}
    ...    platformVersion=${OS_VERSION_BSTACK}
    ...    app=${BROWSERSTACK_APP}
    ...    browserstack.user=${BROWSERSTACK_USERNAME}
    ...    browserstack.key=${BROWSERSTACK_ACCESS_KEY}


Fechar Aplicativo
    Close Application
