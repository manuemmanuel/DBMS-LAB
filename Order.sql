CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR2(100),
    ContactNo VARCHAR2(20),
    Address VARCHAR2(255),
    City VARCHAR2(100),
    PostalCode VARCHAR2(10),
    Country VARCHAR2(50)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR2(100),
    FirstName VARCHAR2(100),
    BirthDate DATE,
    Photo BLOB
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
INSERT INTO Customer VALUES (1, 'John Doe', '123456789', '123 Elm St', 'New York', '10001', 'USA');
INSERT INTO Customer VALUES (2, 'Jane Smith', '987654321', '456 Oak St', 'Los Angeles', '90001', 'USA');
INSERT INTO Customer VALUES (3, 'Michael Johnson', '555555555', '789 Pine St', 'Chicago', '60601', 'USA');
INSERT INTO Customer VALUES (4, 'Emily Davis', '444444444', '321 Cedar St', 'Houston', '77001', 'USA');
INSERT INTO Customer VALUES (5, 'Laura Brown', '333333333', '654 Maple St', 'Toronto', 'M5H 2N2', 'Canada');

INSERT INTO Employees VALUES (1, 'Williams', 'Robert', TO_DATE('1978-03-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees VALUES (2, 'Taylor', 'Alice', TO_DATE('1985-07-22', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees VALUES (3, 'Lee', 'David', TO_DATE('1990-12-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees VALUES (4, 'Brown', 'Jessica', TO_DATE('1982-11-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees VALUES (5, 'Clark', 'Emily', TO_DATE('1975-02-10', 'YYYY-MM-DD'), NULL);

INSERT INTO Orders VALUES (1, 1, 1, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 1);
INSERT INTO Orders VALUES (2, 2, 2, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 2);
INSERT INTO Orders VALUES (3, 3, 3, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 3);
INSERT INTO Orders VALUES (4, 4, 4, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 4);
INSERT INTO Orders VALUES (5, 1, 5, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 5);

SELECT * 
FROM Customer 
ORDER BY CustomerName ASC;

SELECT * 
FROM Orders 
ORDER BY OrderDate ASC;

SELECT * 
FROM Employees 
WHERE BirthDate > TO_DATE('1980-01-01', 'YYYY-MM-DD')
ORDER BY BirthDate DESC;

SELECT O.* 
FROM Orders O
JOIN Customer C ON O.CustomerID = C.CustomerID
WHERE C.Country = 'USA'
ORDER BY O.OrderDate DESC;

SELECT C.CustomerName, COUNT(O.OrderID) AS TotalOrders
FROM Customer C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer
GROUP BY City;

SELECT C.CustomerName, COUNT(O.OrderID) AS TotalOrders
FROM Customer C
JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(O.OrderID) > 2;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer
GROUP BY City
HAVING COUNT(CustomerID) > 3;

