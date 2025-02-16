from dotenv import load_dotenv
import os

load_dotenv()

ACCOUNT = os.getenv('ACCOUNT')
WAREHOUSE = os.getenv('WAREHOUSE')
DATABASE = os.getenv('DATABASE')
SCHEMA_PROD = os.getenv('SCHEMA_PROD')
SCHEMA_DEV = os.getenv('SCHEMA_DEV')
ROLE = os.getenv('ROLE')
USER = os.getenv('USER')
PASSWORD = os.getenv('PASSWORD')
THREADS = os.getenv('THREADS')

print(SCHEMA_DEV)