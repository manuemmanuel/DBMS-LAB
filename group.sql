-- 1. List all customers in ascending order by their names.
SELECT CustomerName
FROM Customer
ORDER BY CustomerName ASC;

-- 2. Retrieve a list of orders with the oldest ones appearing first, sorted by order date in ascending order.
SELECT OrderID, CustomerID, OrderDate
FROM Orders
ORDER BY OrderDate ASC;

-- 3. Find the employees who were born after 1980 and list them in descending order of their birthdates.
SELECT FirstName, LastName, BirthDate
FROM Employees
WHERE BirthDate > TO_DATE('1980-01-01', 'YYYY-MM-DD')
ORDER BY BirthDate DESC;

-- 4. List orders placed by customers from 'USA' in descending order of the order date.
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Orders o
JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'USA'
ORDER BY o.OrderDate DESC;

-- 5. Calculate the total number of orders placed by each customer.
SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customer c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY TotalOrders DESC;

-- 6. List the cities with the total number of customers.
SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer
GROUP BY City
ORDER BY TotalCustomers DESC;

-- 7. List customers who have placed more than 2 orders.
SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customer c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID) > 2
ORDER BY TotalOrders DESC;

-- 8. Display cities with more than 3 customers.
SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer
GROUP BY City
HAVING COUNT(CustomerID) > 3
ORDER BY TotalCustomers DESC;
