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

    postgres_insert_query = """ INSERT INTO customer (cust_id, cust_first_name, cust_mid_initial, cust_last_name, cust_email, is_member) VALUES (%s,%s,%s,%s,%s,%s)"""
    record_to_insert = (3, 'Jim', 'R', 'Cool', 'jimthecoolone36@hotmail.com', True)
    cursor.execute(postgres_insert_query, record_to_insert)

    conn.commit()
    count = cursor.rowcount
    print(count, "Record inserted successfully into mobile table")

except (Exception, psycopg2.Error) as error:
    print("Failed to insert record into mobile table", error)

finally:
    # closing database connection.
    if conn:
        cursor.close()
        conn.close()
        print("PostgreSQL connection is closed")



