CREATE TABLE Customer_Exp08_CSA_41 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNo VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(10),
    Country VARCHAR(50)
);
CREATE TABLE Employees_Exp08_CSA_41 (
    EmployeeID INT PRIMARY KEY,
    LastName VARCHAR(100),
    FirstName VARCHAR(100),
    BirthDate DATE,
    Photo VARCHAR(10)
);
CREATE TABLE Orders_Exp08_CSA_41 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer_Exp08_CSA_41(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees_Exp08_CSA_41(EmployeeID)
);
INSERT INTO Customer_Exp08_CSA_41 VALUES (1, 'John', '123456789', '123 Elm St', 'New York', '10001', 'USA');
INSERT INTO Customer_Exp08_CSA_41 VALUES (2, 'Jibin', '987654321', '456 Oak St', 'Los Angeles', '90001', 'USA');
INSERT INTO Customer_Exp08_CSA_41 VALUES (3, 'Nagaraj', '555555555', '789 Pine St', 'Chicago', '60601', 'USA');
INSERT INTO Customer_Exp08_CSA_41 VALUES (4, 'Pranav', '444444444', '321 Cedar St', 'Houston', '77001', 'USA');
INSERT INTO Customer_Exp08_CSA_41 VALUES (5, 'Felix', '333333333', '654 Maple St', 'Toronto', '68560', 'Canada');

INSERT INTO Employees_Exp08_CSA_41 VALUES (1, 'Jeswin', 'Sabu', TO_DATE('1978-03-01', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees_Exp08_CSA_41 VALUES (2, 'Jose', 'Thomas', TO_DATE('1985-07-22', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees_Exp08_CSA_41 VALUES (3, 'Kevin', 'Biju', TO_DATE('1990-12-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees_Exp08_CSA_41 VALUES (4, 'Lidiya', 'Reju', TO_DATE('1982-11-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees_Exp08_CSA_41 VALUES (5, 'Maria', 'Alex', TO_DATE('1975-02-10', 'YYYY-MM-DD'), NULL);

INSERT INTO Orders_Exp08_CSA_41 VALUES (1, 1, 1, TO_DATE('2023-09-01', 'YYYY-MM-DD'), 1);
INSERT INTO Orders_Exp08_CSA_41 VALUES (2, 2, 2, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 2);
INSERT INTO Orders_Exp08_CSA_41 VALUES (3, 3, 3, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 3);
INSERT INTO Orders_Exp08_CSA_41 VALUES (4, 4, 4, TO_DATE('2023-06-30', 'YYYY-MM-DD'), 4);
INSERT INTO Orders_Exp08_CSA_41 VALUES (5, 1, 5, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 5);

SELECT * 
FROM Customer_Exp08_CSA_41 
ORDER BY CustomerName ASC;

SELECT * 
FROM Orders_Exp08_CSA_41 
ORDER BY OrderDate ASC;

SELECT * 
FROM Employees_Exp08_CSA_41 
WHERE BirthDate > TO_DATE('1980-01-01', 'YYYY-MM-DD')
ORDER BY BirthDate DESC;

SELECT O.* 
FROM Orders_Exp08_CSA_41 O
JOIN Customer_Exp08_CSA_41 C ON O.CustomerID = C.CustomerID
WHERE C.Country = 'USA'
ORDER BY O.OrderDate DESC;

SELECT C.CustomerName, COUNT(O.OrderID) AS TotalOrders
FROM Customer_Exp08_CSA_41 C
JOIN Orders_Exp08_CSA_41 O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer_Exp08_CSA_41
GROUP BY City;

SELECT C.CustomerName, COUNT(O.OrderID) AS TotalOrders
FROM Customer_Exp08_CSA_41 C
JOIN Orders_Exp08_CSA_41 O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(O.OrderID) > 2;

SELECT City, COUNT(CustomerID) AS TotalCustomers
FROM Customer_Exp08_CSA_41
GROUP BY City
HAVING COUNT(CustomerID) > 3;
