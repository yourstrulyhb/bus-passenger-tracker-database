import os
import mysql.connector  # pip install mysql-connector-python
import pandas as pd 

# mysql_pass = os.environ["MYSQL_PASS"]
# mysql_pass = os.environ.get("MYSQL_PASS")

mysql_pass = ''
db_name = 'bus_passenger_tracker'
username='root'
port=3306


# Establish connection with MySQL database
cnx = mysql.connector.connect(user='root', password=mysql_pass,
                              host='127.0.0.1',
                              database=db_name)


if cnx and cnx.is_connected():

    with cnx.cursor() as cursor:
      
      # Get table data
      result = cursor.execute("SELECT * FROM person LIMIT 100")
      rows = cursor.fetchall()

      # Get column names
      result = cursor.execute("SHOW COLUMNS FROM person")
      columns = cursor.fetchall()
      columns = [x[0] for x in columns]

      df = pd.DataFrame(rows, columns=columns)
      print(df.head())

      cnx.close()

else:
    print("Could not connect")
