CREATE TABLE Bank (
    bankcode VARCHAR(3) PRIMARY KEY,
    bankname VARCHAR(255) NOT NULL,
    headoffice VARCHAR(255),
    branches INT CHECK (branches > 0)
);
INSERT INTO Bank (bankcode, bankname, headoffice, branches) 
VALUES ('SBI', 'State Bank of India', 'Mumbai', 100),
       ('HDFC', 'HDFC Bank', 'Mumbai', 200),
       ('SBT', 'State Bank of Travancore', 'Thiruvananthapuram', 50);
CREATE TABLE Branch (
    branchid INT PRIMARY KEY,
    branchname VARCHAR(255) DEFAULT 'New Delhi',
    bankid VARCHAR(3),
    FOREIGN KEY (bankid) REFERENCES Bank(bankcode)
    ON DELETE CASCAD
);
INSERT INTO Branch (branchid, branchname, bankid)
VALUES (1, 'Kottayam', 'SBT'),
       (2, 'Ernakulam', 'HDFC'),
       (3, 'Thiruvananthapuram', 'SBI');
DELETE FROM Bank WHERE bankcode = 'SBT';
ALTER TABLE Branch DROP CONSTRAINT branchid_pk;
CREATE VIEW bank_head_office AS
SELECT bankcode, bankname, headoffice, branches
FROM Bank
WHERE headoffice = 'Ernakulam';
CREATE VIEW bank_branch AS
SELECT Bank.bankcode, Bank.bankname, Bank.headoffice, Bank.branches
FROM Bank
JOIN Branch ON Bank.bankcode = Branch.bankid
WHERE Branch.branchname = 'Kottayam';


