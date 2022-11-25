import cx_Oracle

# Connect to the database
connection = cx_Oracle.connect()

# Create a cursor
cursor = connection.cursor()

# Execute the query
