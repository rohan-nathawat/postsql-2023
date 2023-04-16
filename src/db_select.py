import psycopg2

try:
    conn = psycopg2.connect(
    host="localhost",
    database="restaurant",
    port=5432,
    user="postgres",
    password="232609"
    )
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



