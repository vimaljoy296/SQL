import sqlite3

# Helper Functions for Flask app

# Make sure the SQL query gives the column names along with the query results
def row_to_dict(cursor: sqlite3.Cursor, row: sqlite3.Row) -> dict:
    data = {}
    for idx, col in enumerate(cursor.description):
        data[col[0]] = row[idx]
    return data

# Execute SQL query in the ecommerce.db SQLite3 database
def execute_query(query):
    conn = sqlite3.connect('ecommerce.db')
    c = conn.cursor()
    c.row_factory = row_to_dict
    c.execute(query)
    results = c.fetchall()
    conn.close()
    return results
