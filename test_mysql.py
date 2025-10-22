import mysql.connector

connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="yourpassword",
    database="test"
)

print("✅ Connected to MySQL:", connection.is_connected())

connection.close()
