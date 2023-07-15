import sqlite3

# Creating DB connection
print('Connection to db...')
try:
    sqliteConnection = sqlite3.connect('database/planes.db')
    cursor = sqliteConnection.cursor()
    print('DB connection successful')

except sqlite3.Error as error:

    print("Error while connecting to sqlite", error)
    
    
# sql_query = """SELECT * FROM sqlite_master"""

# cursor.execute(sql_query)
# print(cursor.fetchall())

cursor.execute("SELECT * FROM RunDetails")
print(cursor.fetchall())