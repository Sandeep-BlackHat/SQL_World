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

The following SQL statement selects the first three records from the "Customers" table (for SQL Server/MS Access):

Example
SELECT TOP 3 * FROM Customers;

The following SQL statement shows the equivalent example using the LIMIT clause (for MySQL):

Example
SELECT * 
FROM Customers
LIMIT 3;
The following SQL statement shows the equivalent example using ROWNUM (for Oracle):

Example
SELECT * FROM Customers
WHERE ROWNUM <= 3;
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

[10] /*SQL INSERT INTO Statement*/

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

INSERT INTO table_name
VALUES (value1, value2, value3, ...);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

[10] /*SQL NULL*/

/*IS NULL Syntax*/

SELECT column_names
FROM table_name
WHERE column_name IS NULL;

/*IS NOT NULL Syntax*/

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

/*Example*/

SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
Tip: Always use IS NULL to look for NULL values.


SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

[11] /*The SQL UPDATE Statement*/

UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

/*Example*/

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

/*Update Warning!
Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!*/

UPDATE Customers
SET ContactName='Juan';

[11] /*SQL DELETE*/

/*Syntax*/

DELETE FROM table_name WHERE condition;

DELETE FROM Customers
WHERE CustomerName='Alfreds Futterkiste';

/*Delete All Records*/

DELETE FROM table_name;

[12] /*SQL TOP, LIMIT or ROWNUM Clause*/

/*SQL Server / MS Access Syntax:*/

SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

/*MySQL Syntax:*/

SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

/*Oracle Syntax:*/

SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

/*The following SQL statement selects the first three records from the "Customers" table (for SQL Server/MS Access):*/

SELECT TOP 3 * 
FROM Customers;

/*The following SQL statement shows the equivalent example using the LIMIT clause (for MySQL):*/

Example
SELECT * 
FROM Customers
LIMIT 3;

/*The following SQL statement shows the equivalent example using ROWNUM (for Oracle):*/

Example
SELECT * 
FROM Customers
WHERE ROWNUM <= 3;

[13] /*SQL MAX and MIN*/

/*Max Syntax*/
SELECT MAX(Price)
AS MAX_Price
FROM Customers;

/*Min Syntax*/
SELECT MIN(Price)
AS MIN_price 
FROM Customer

SELECT MIN(Price) AS SmallestPrice
FROM Products;

SELECT MAX(Price) AS LargestPrice
FROM Products;

[14] /*AVG, Count, SUM*/

/*COUNT() Example
The following SQL statement finds the number of products:*/

SELECT COUNT(ProductID)
FROM Products;
/*Note: NULL values are not counted.*/

/*AVG() Example
The following SQL statement finds the average price of all products:*/

SELECT AVG(Price)
FROM Products;

/*SUM() Example
The following SQL statement finds the sum of the "Quantity" fields in the "OrderDetails" table:*/

SELECT SUM(Quantity)
FROM OrderDetails;
/*Note: NULL values are ignored.*/

[15] /*SQL LIKE Operator*/

/*The SQL LIKE Operator
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards often used in conjunction with the LIKE operator:

% - The percent sign represents zero, one, or multiple characters
_ - The underscore represents a single character
Note: MS Access uses an asterisk (*) instead of the percent sign (%), and a question mark (?) instead of the underscore (_).

The percent sign and the underscore can also be used in combinations!*/

/*LIKE Syntax*/
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

/*SQL LIKE Examples
The following SQL statement selects all customers with a CustomerName starting with "a":*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
/*The following SQL statement selects all customers with a CustomerName ending with "a":*/

SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
/*The following SQL statement selects all customers with a CustomerName that have "or" in any position:*/

SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';
/*The following SQL statement selects all customers with a CustomerName that have "r" in the second position:*/

SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
/*The following SQL statement selects all customers with a CustomerName that starts with "a" and are at least 3 characters in length:*/

SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
/*The following SQL statement selects all customers with a ContactName that starts with "a" and ends with "o":*/

SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';0/*
The following SQL statement selects all customers with a CustomerName that does NOT start with "a":*/

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';

[16] /*Using the _ Wildcard*/
/*The following SQL statement selects all customers with a City starting with any character, followed by "ondon":*/

SELECT * FROM Customers
WHERE City LIKE '_ondon'

/*Using the [charlist] Wildcard
The following SQL statement selects all customers with a City starting with "b", "s", or "p":*/

SELECT * FROM Customers
WHERE City LIKE '[bsp]%';

/*The following SQL statement selects all customers with a City starting with "a", "b", or "c":*/

SELECT * FROM Customers
WHERE City LIKE '[a-c]%';
