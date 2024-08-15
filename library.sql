CREATE TABLE LANGUAGE (
    Language_Id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);
DESC LANGUAGE;
CREATE TABLE PUBLISHER (
    Publisher_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255)
);
DESC PUBLISHER;
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
DESC BOOK;

CREATE TABLE AUTHOR (
    Author_Id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    Phone_Number VARCHAR(20),
    Status VARCHAR(50)
);
DESC AUTHOR;

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

INSERT INTO LANGUAGE (Language_Id, Name) VALUES
(1, 'English'),
(2, 'Spanish');

INSERT INTO PUBLISHER (Publisher_Id, Name, Address) VALUES
(1, 'O\'Reilly Media', '1005 Gravenstein Highway North, Sebastopol, CA'),
(2, 'Penguin Random House', '1745 Broadway, New York, NY');

INSERT INTO BOOK (Book_Id, Title, Language_Id, MRP, Publisher_Id, Published_Date, Volume, Status) VALUES
(1, 'Learning SQL', 1, 50.00, 1, '2021-01-01', 1, 'Available'),
(2, 'Effective Java', 1, 45.00, 2, '2020-06-15', 1, 'Available');

INSERT INTO AUTHOR (Author_Id, Name, Email, Phone_Number, Status) VALUES
(1, 'Alan Beaulieu', 'alan@example.com', '1234567890', 'Active'),
(2, 'Joshua Bloch', 'joshua@example.com', '0987654321', 'Active');

INSERT INTO BOOK_AUTHOR (Book_Id, Author_Id) VALUES
(1, 1),
(2, 2);

INSERT INTO MEMBER (Member_Id, Name, Branch_Code, Roll_Number, Phone_Number, Email_Id, Date_of_Join, Status) VALUES
(1, 'John Doe', 'CS', '123', '555-5555', 'john@example.com', '2023-01-10', 'Active');

INSERT INTO BOOK_ISSUE (Issue_Id, Date_Of_Issue, Book_Id, Member_Id, Expected_Date_Of_Return, Status) VALUES
(1, '2023-02-01', 1, 1, '2023-02-15', 'Issued');

INSERT INTO BOOK_RETURN (Issue_Id, Actual_Date_Of_Return, LateDays, LateFee) VALUES
(1, '2023-02-18', 3, 30.00);

INSERT INTO LATE_FEE_RULE (FromDays, ToDays, Amount) VALUES
(0, 7, 10.00),
(8, 30, 100.00),
(31, NULL, 10.00);

ALTER TABLE BOOK ADD COLUMN ISBN VARCHAR(20);
ALTER TABLE MEMBER MODIFY Phone_Number VARCHAR(30);
ALTER TABLE BOOK DISABLE CONSTRAINT BOOK_PUBLISHER_FK;
TRUNCATE TABLE PUBLISHER;
ALTER TABLE BOOK ENABLE CONSTRAINT BOOK_PUBLISHER_FK;
DROP TABLE AUTHOR;
ALTER TABLE LATE_FEE_RULE RENAME TO FINE;
