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

python -m venv venv
(em outro terminal) appium
robot tests/

# Edite o arquivo .env e coloque suas credenciais do BrowserStack e o hash do app


