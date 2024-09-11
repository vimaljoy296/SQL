# IKEA
## Database
As the name suggests, this is a mock IKEA furniture store database, containing details about furniture products and their prices. Using this database, we will explore how to write queries in SQL.

## ER Diagram
(diagram to be attached explaining the structure of the IKEA database)

## Code Along
To view all the products within the `products` table, we can write a query like  

```
SELECT *
FROM products;
```
Notice how the keywords `SELECT` and `FROM` are capitalised. This is a coding convention used broadly for SQL queries, and we will follow it in all our queries.   
To run this query, copy and paste it in the empty `queries.sql` file within this folder. Then, in the Terminal, run:  
`sqlite3 ikea.db < queries.sql`