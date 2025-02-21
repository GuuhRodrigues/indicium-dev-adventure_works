from dotenv import load_dotenv
import os

load_dotenv()

ACCOUNT = os.getenv('ACCOUNT')
WAREHOUSE = os.getenv('WAREHOUSE')
DATABASE = os.getenv('DATABASE')
SCHEMA_STG = os.getenv('SCHEMA_STG')
SCHEMA_INT = os.getenv('SCHEMA_INT')
SCHEMA_MART = os.getenv('SCHEMA_MART')
ROLE = os.getenv('ROLE')
USER = os.getenv('USER')
PASSWORD = os.getenv('PASSWORD')
THREADS = os.getenv('THREADS')

