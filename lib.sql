CREATE DATABASE Library;
USE Library;

CREATE TABLE LANGUAGE (
    Language_Id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE PUBLISHER (
    Publisher_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255)
);

CREATE TABLE BOOK (
    Book_Id INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Language_Id INT,
    MRP DECIMAL(10, 2),
    Publisher_Id INT,
    Published_Date DATE,
    Volume INT,
    Status VARCHAR(50),
    FOREIGN KEY (Language_Id) REFERENCES LANGUAGE(Language_Id),
    FOREIGN KEY (Publisher_Id) REFERENCES PUBLISHER(Publisher_Id)
);

CREATE TABLE AUTHOR (
    Author_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone_Number VARCHAR(20),
    Status VARCHAR(50)
);

CREATE TABLE BOOK_AUTHOR (
    Book_Id INT,
    Author_Id INT,
    PRIMARY KEY (Book_Id, Author_Id),
    FOREIGN KEY (Book_Id) REFERENCES BOOK(Book_Id),
    FOREIGN KEY (Author_Id) REFERENCES AUTHOR(Author_Id)
);

CREATE TABLE MEMBER (
    Member_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Branch_Code VARCHAR(10),
    Roll_Number VARCHAR(20),
    Phone_Number VARCHAR(20),
    Email_Id VARCHAR(100),
    Date_of_Join DATE,
    Status VARCHAR(50)
);

CREATE TABLE BOOK_ISSUE (
    Issue_Id INT PRIMARY KEY,
    Date_Of_Issue DATE NOT NULL,
    Book_Id INT,
    Member_Id INT,
    Expected_Date_Of_Return DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Book_Id) REFERENCES BOOK(Book_Id),
    FOREIGN KEY (Member_Id) REFERENCES MEMBER(Member_Id)
);

CREATE TABLE BOOK_RETURN (
    Issue_Id INT PRIMARY KEY,
    Actual_Date_Of_Return DATE,
    LateDays INT,
    LateFee DECIMAL(10, 2),
    FOREIGN KEY (Issue_Id) REFERENCES BOOK_ISSUE(Issue_Id)
);

CREATE TABLE LATE_FEE_RULE (
    FromDays INT,
    ToDays INT,
    Amount DECIMAL(10, 2),
    PRIMARY KEY (FromDays, ToDays)
);
