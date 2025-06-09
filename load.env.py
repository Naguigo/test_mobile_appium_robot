from dotenv import load_dotenv
import os

def load_env_variables():
    load_dotenv(dotenv_path='../.env')  # ajuste o caminho conforme sua estrutura
    return os.environ