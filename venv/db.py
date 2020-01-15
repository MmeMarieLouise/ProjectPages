from flask import render_template
# import library
import psycopg2

# establish a connection to database
conn = psycopg2.connect(
    database="projectpages",
    user="postgres",
    password="password",
    host="0.0.0.0",
    port="5432"
)

# cursor used to execute queries in the database
cursor = conn.cursor()

# execute first query
cursor.execute("select firstname, surname from contact")
rows = cursor.fetchall()
#render_template('template.html')


for r in rows:
    print(f"firstname{r[0]} surname {r[1]}")

# close cursor
cursor.close()

# close the connection
conn.close()

