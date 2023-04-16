import psycopg2
from configparser import ConfigParser


# create a parser
parser = ConfigParser()
# read config file
parser.read("creds.ini")
pgcreds = {}

if parser.has_section("pgdb"):
    items = parser.items("pgdb")
    for item in items:
        pgcreds[item[0]] = item[1]

try:
    conn = psycopg2.connect(**pgcreds)
    # Creates a cursor object
    cursor = conn.cursor()
    postgreSQL_select_Query = "select * from customer"
    
    #selects from all tables
    cursor.execute(postgreSQL_select_Query)
    cust_data = cursor.fetchall()

    print (cust_data)

except (Exception, psycopg2.Error) as error:
    print("Failed to insert record into customer table", error)

finally:
    # closing database connection.
    if conn:
        cursor.close()
        conn.close()
        print("PostgreSQL connection is closed")



