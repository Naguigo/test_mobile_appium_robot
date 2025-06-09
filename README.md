# 📱 Testes Automatizados Mobile (Appium + Robot Framework + BrowserStack)

Framework para automação de testes mobile Android, rodando no BrowserStack, usando Robot Framework e padrão Page Object.

## Pré-requisitos

- Conta no [BrowserStack](https://www.browserstack.com/)
- Python 3.8+
- Seu app .apk hospedado no BrowserStack (App Automate)
- MacBook (ou Linux)

## Instalação
git clone https://github.com/sua-empresa/mobile-bstack-tests.git
cd mobile-bstack-tests
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
cp .env.example .env


## Execução local
faça download na pasta app do apk e salve na maquina
troque no arquivo resources/keywords.robot o path 
 /Users/seuuser/caminho/app-debug.apk

python -m venv venv
(em outro terminal) appium
robot tests/

# Edite o arquivo .env e coloque suas credenciais do BrowserStack e o hash do app


