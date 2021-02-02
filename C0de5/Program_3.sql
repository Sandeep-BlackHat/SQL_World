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
