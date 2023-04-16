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
    postgreSQL_delete_Query = "DELETE FROM customer where cust_id = 3"
    
    #selects from all tables
    cursor.execute(postgreSQL_delete_Query)
    sql1 = '''select * from customer;'''
    cursor.execute(sql1)

    #prints tables in a neat format
    for i in cursor.fetchall():
        print(i)

except (Exception, psycopg2.Error) as error:
    print("Failed to insert record into customer table", error)

finally:
    # closing database connection.
    if conn:
        cursor.close()
        conn.close()
        print("PostgreSQL connection is closed")



