import psycopg2
# establish a connection to database
connection = psycopg2.connect(
                   host = "10.108.54.230",
                   database= "projectpages",
                   user = "postgres",
                   password = "password",
                   port = "5432",
)


# cursor
cursor = connection.cursor()


# execute query
cursor.execute("select firstname, surname from contact")

rows = cursor.fetchall()

for r in rows:
    print (f"firstname{r[0]} surname {r[1]}")

#close cursor
cursor.close()

# close the connection
connection.close()