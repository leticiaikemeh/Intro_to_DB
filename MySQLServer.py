from getpass import getpass
from mysql.connector import connect, Error

try:
    with connect(
        host="localhost",
        user=input("Enter username: "),
        password=getpass("Enter password: "),
    ) as connection:
         with connection.cursor() as cursor:
             cursor.execute(
                 f"CREATE DATABASE IF NOT EXISTS alx_book_store"
                 "CHARACTER SET UTF8MB4 COLLATE UTF8MB4_UNICODE_CI"
                 )
             print("Database 'alx_book_store' created successfuly!")

except Error as e:
    print(e)