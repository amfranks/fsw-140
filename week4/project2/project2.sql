-- USE salesorders;

-- SELECT * FROM customers;

-- SELECT VendName, VendStreetAddress, VendState FROM vendors 
-- ORDER BY VendState DESC;

-- UPDATE products
-- 	SET RetailPrice = RetailPrice + (RetailPrice * 0.07);
-- SELECT * FROM products;

-- SELECT * FROM orders
-- INNER JOIN customers
-- 	ON orders.CustomerId = customers.CustomerID
-- ORDER BY OrderDate ASC;

-- SELECT * FROM vendors
-- WHERE VendCity = 'Albany' OR VendCity = 'Anchorage' OR VendCity = 'Dallas';

-- SELECT * FROM products
-- WHERE QuantityOnHand >= 30;

-- SELECT * FROM vendors                
-- WHERE VendEMailAddress IS NULL;

-- SELECT EmpFirstName, orders.OrderDate FROM employees
-- INNER JOIN orders
-- ON employees.EmployeeID = orders.EmployeeID
-- ORDER BY orders.OrderDate;

-- SELECT VendName, VendState, product_vendors.ProductNumber FROM vendors
-- INNER JOIN product_vendors
-- ON vendors.VendorID = product_vendors.VendorID
-- WHERE VendState = 'TX';

-- SELECT * FROM employees
-- INNER JOIN vendors                                
-- ON employees.EmpCity = vendors.VendCity;

-- SELECT DISTINCT CustState, EmpState FROM customers
-- INNER JOIN employees      
-- WHERE customers.CustState NOT IN (SELECT EmpState FROM employees);

-- SELECT avg(RetailPrice) AS 'Average Price' FROM products
-- WHERE ProductName LIKE '%helmet%';

-- SELECT MIN(ShipDate) FROM orders;

-- SELECT SUM(OrderTotal), customers.CustState FROM orders
-- INNER JOIN customers
-- WHERE customers.CustState = 'OR';

-- SELECT employees.EmployeeID, SUM(OrderTotal), AVG(order_details.ProductNumber), AVG(QuotedPrice), SUM(QuantityOrdered) FROM employees
-- INNER JOIN orders
-- ON orders.EmployeeID = employees.EmployeeID
-- INNER JOIN order_details
-- ON order_details.OrderNumber = orders.OrderNumber
-- GROUP BY employees.EmployeeID
-- ORDER BY AVG(QuotedPrice) DESC;