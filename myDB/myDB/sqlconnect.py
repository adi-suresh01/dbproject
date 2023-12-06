# importing required libraries

import mysql.connector

# Establishing a connection to the local host by entering a valid username and password
dataBase = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="password123"
)
