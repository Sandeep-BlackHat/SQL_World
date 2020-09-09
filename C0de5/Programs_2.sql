[1] /*The SQL IN Operator
The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.*/

SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

[2] /*The SQL BETWEEN Operator*/

SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

[3] /*BETWEEN with IN Example
The following SQL statement selects all products with a price BETWEEN 10 and 20. In addition; do not show products with a CategoryID of 1,2, or 3:*/

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID NOT IN (1,2,3);

/*BETWEEN Text Values Example
The following SQL statement selects all products with a ProductName BETWEEN Carnarvon Tigers and Mozzarella di Giovanni:*/

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

/*NOT BETWEEN Text Values Example
The following SQL statement selects all products with a ProductName NOT BETWEEN Carnarvon Tigers and Mozzarella di Giovanni:*/

SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

/*BETWEEN Dates Example
The following SQL statement selects all orders with an OrderDate BETWEEN '01-July-1996' and '31-July-1996':*/

SELECT * FROM Orders
WHERE OrderDate BETWEEN #01/07/1996# AND #31/07/1996#;

/*OR:*/

SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

[4] /*SQL Aliases*/

/*Alias Column Syntax*/
SELECT column_name AS alias_name
FROM table_name;

/*Alias Table Syntax*/
SELECT column_name(s)
FROM table_name AS alias_name;
