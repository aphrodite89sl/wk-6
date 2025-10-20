-- Question 1 🧑‍💼 — INNER JOIN employees → offices
USE salesdb;

SELECT e.firstName,
       e.lastName,
       e.email,
       e.officeCode
FROM employees AS e
INNER JOIN offices AS o
  ON e.officeCode = o.officeCode;


-- Question 2 🛍️ — LEFT JOIN products → productlines
SELECT p.productName,
       p.productVendor,
       p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
  ON p.productLine = pl.productLine;


-- Question 3 📦 — RIGHT JOIN customers ← orders (first 10 orders)
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
  ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate ASC
LIMIT 10;
