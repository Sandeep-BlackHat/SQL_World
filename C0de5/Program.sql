[1] /*First SQL Code:*/

SELECT *
FROM Customers;

[2] /*Some of The Most Important SQL Commands*/

SELECT - extracts data from a database
UPDATE - updates data in a database
DELETE - deletes data from a database
INSERT INTO - inserts new data into a database
CREATE DATABASE - creates a new database
ALTER DATABASE - modifies a database
CREATE TABLE - creates a new table
ALTER TABLE - modifies a table
DROP TABLE - deletes a table
CREATE INDEX - creates an index (search key)
DROP INDEX - deletes an index

[3] /*Selecting 2 Columns*/

SELECT CustomerName, City 
FROM Customers;

[4] /*Using * in SQL*/

SELECT * 
FROM Customers;

[5] /*The SQL SELECT DISTINCT Statement*/

Syntax: SELECT DISTINCT column1, column2, ...
        FROM table_name;
        
1. SELECT Country 
    FROM Customers;

2. SELECT DISTINCT Country 
    FROM Customers;

3. SELECT COUNT(DISTINCT Country) 
    FROM Customers;

[6] /*The WHERE phrase*/

1. SELECT * FROM Customers
   WHERE Country='Mexico';

2. SELECT * FROM Customers
   WHERE CustomerID=1;
