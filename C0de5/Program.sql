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

[7] /*The following operators can be used in the WHERE clause: */

Operator	Description
=	        Equal	
>	        Greater than	
<	        Less than	
>=	        Greater than or equal	
<=	        Less than or equal	
<>	        Not equal. Note: In some versions of SQL this operator may be written as !=	
BETWEEN 	Between a certain range	
LIKE	        Search for a pattern (SELECT * FROM Customers WHERE City LIKE 's%';)
IN	        To specify multiple possible values for a column ( SELECT * FROM Customers WHERE City IN ('Paris','London'); )

[8] /*AND, OR and NOT */

/*AND Syntax */
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

/*OR Syntax*/
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

/*NOT Syntax*/
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

/*Combining AND, OR and NOT*/

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

[9] /*SQL ORDER BY*/

/*ORDER BY Syntax*/
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC; 
/* Using ASC| DESC */

SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;
