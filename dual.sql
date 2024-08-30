-- 1. Find the Ceil value of 8.29
SELECT CEIL(8.29) AS Ceil_Value FROM DUAL;

-- 2. Round up -3.9 using the CEIL function
SELECT CEIL(-3.9) AS Ceil_Value FROM DUAL;

-- 3. Ceil the result of 17 divided by 3
SELECT CEIL(17 / 3) AS Ceil_Result FROM DUAL;

-- 4. Find the floor value of 9.76
SELECT FLOOR(9.76) AS Floor_Value FROM DUAL;

-- 5. Round down -5.3 using the FLOOR function
SELECT FLOOR(-5.3) AS Floor_Value FROM DUAL;

-- 6. Floor the result of 15 divided by 4
SELECT FLOOR(15 / 4) AS Floor_Result FROM DUAL;

-- 7. Find the square root of 625
SELECT SQRT(625) AS Square_Root FROM DUAL;

-- 8. Calculate the square root of 2 using the SQRT function
SELECT SQRT(2) AS Square_Root FROM DUAL;

-- 9. Find the abs value of 8.29
SELECT ABS(8.29) AS Abs_Value FROM DUAL;

-- 10. Find the absolute value of a negative number, -3.14
SELECT ABS(-3.14) AS Abs_Value FROM DUAL;

-- 11. Determine the absolute value of a numeric column, -42
SELECT ABS(-42) AS Abs_Value FROM DUAL;

-- 12. Display the current date (set for the operating system on which the database server resides) using SYSDATE as NOW
SELECT SYSDATE AS NOW FROM DUAL;

-- 13. Use TO_CHAR to display date and time in different formats
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') AS Formatted_Date FROM DUAL;

-- 14. Display system date and time using SYSTIMESTAMP 
SELECT SYSTIMESTAMP AS Current_Timestamp FROM DUAL;

-- 15. Demonstrate the use of LEAST function in string, by passing three strings as arguments
SELECT LEAST('Apple', 'Banana', 'Cherry') AS Least_String FROM DUAL;

-- 16. Demonstrate the use of GREATEST function in string, by passing three strings as arguments
SELECT GREATEST('Apple', 'Banana', 'Cherry') AS Greatest_String FROM DUAL;

-- 17. Remove leading spaces from the string ' Trim me'
SELECT LTRIM('  Trim me') AS Trimmed_String FROM DUAL;

-- 18. Remove Trailing spaces from the string ‘I love India                '
SELECT RTRIM('I love India                ') AS Trimmed_String FROM DUAL;

-- 19. Right-pad your own name to be 15 characters long with 'X'
SELECT RPAD('YourName', 15, 'X') AS Padded_Name FROM DUAL;

-- 20. Right-pad a numeric column, e.g., 123, with zeros to make it 6 characters long
SELECT LPAD(123, 6, '0') AS Padded_Number FROM DUAL;

-- 21. Display the reverse of the string 'uoyevol I'
SELECT REVERSE('uoyevol I') AS Reversed_String FROM DUAL;

-- 22. Reverse the string 'racecar' to check if it's a palindrome
SELECT REVERSE('racecar') AS Reversed_String FROM DUAL;

-- 23. Find the length of the string 'Oracle Database'
SELECT LENGTH('Oracle Database') AS String_Length FROM DUAL;

-- 24. Concatenate the following strings: 'Oracle', 'SQL', 'is', 'powerful', and 'flexible'
SELECT 'Oracle' || ' ' || 'SQL' || ' is ' || 'powerful' || ' and flexible' AS Concatenated_String FROM DUAL;

-- 25. Concatenate your first name and last name using CONCAT function
SELECT CONCAT('FirstName', ' LastName') AS Full_Name FROM DUAL;

-- 26. Use SUBSTR function to retrieve the substring ‘is’ from the string ‘India is my country’
SELECT SUBSTR('India is my country', 7, 2) AS Substring FROM DUAL;

-- 27. Extract a substring of your own name, the middle 3 characters
SELECT SUBSTR('YourName', LENGTH('YourName')/2, 3) AS Middle_Substring FROM DUAL;

-- 28. Extract the first 3 characters from the string 'Substring'
SELECT SUBSTR('Substring', 1, 3) AS First_Three_Chars FROM DUAL;
