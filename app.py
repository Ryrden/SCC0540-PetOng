import cx_Oracle
from dotenv import load_dotenv
"""
DB_HOST=host
DB_USER=user
DB_PASSWORD=password
"""
load_dotenv()

# Connect to the database
con = cx_Oracle.connect("{DB_USER}", "{DB_PASSWORD}", "{DB_HOST}")

# Create a cursor
cur = con.cursor()

# Execute the query
