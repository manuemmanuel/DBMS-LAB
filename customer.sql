-- Create Customer table
CREATE TABLE Customer (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    ContactName VARCHAR2(100),
    Address VARCHAR2(150),
    City VARCHAR2(50),
    PostalCode VARCHAR2(10),
    Country VARCHAR2(50)
);

-- Create Employees table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    LastName VARCHAR2(50),
    FirstName VARCHAR2(50),
    BirthDate DATE,
    Photo BLOB
);

-- Create Orders table
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    EmployeeID NUMBER,
    OrderDate DATE,
    ShipperID NUMBER,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Insert data into Customer table
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (1, 'John Doe', 'John', '123 Maple St', 'New York', '10001', 'USA');
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (2, 'Jane Smith', 'Jane', '456 Oak St', 'Los Angeles', '90001', 'USA');
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (3, 'Alice Brown', 'Alice', '789 Pine St', 'Chicago', '60601', 'USA');
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (4, 'Bob White', 'Bob', '321 Elm St', 'Houston', '77001', 'USA');
INSERT INTO Customer (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (5, 'Charlie Black', 'Charlie', '654 Cedar St', 'Miami', '33101', 'USA');

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (1, 'Smith', 'John', TO_DATE('1975-05-15', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (2, 'Doe', 'Jane', TO_DATE('1985-08-22', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (3, 'Johnson', 'Alice', TO_DATE('1990-12-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (4, 'Williams', 'Bob', TO_DATE('1978-03-30', 'YYYY-MM-DD'), NULL);
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES (5, 'Brown', 'Charlie', TO_DATE('1982-11-11', 'YYYY-MM-DD'), NULL);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (1, 1, 1, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 1);
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (2, 2, 2, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 2);
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (3, 3, 3, TO_DATE('2023-06-25', 'YYYY-MM-DD'), 3);
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (4, 4, 4, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 1);
INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
VALUES (5, 5, 5, TO_DATE('2023-04-18', 'YYYY-MM-DD'), 2);

COMMIT;
