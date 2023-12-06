# importing required libraries

import mysql.connector

# Establishing a connection to the local host by entering a valid username and password

database = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="password123"
)

# preparing a cursor object
cursor = database.cursor()

# creating database
cursor.execute("CREATE DATABASE BANK2")
