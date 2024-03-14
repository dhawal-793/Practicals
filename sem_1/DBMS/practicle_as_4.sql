-- Run the code on https://livesql.oracle.com/apex/


-- Q1 WAP to demonstrate of Variable declaration & initialization in PL/SQL.
-- DECLARE
--    var1 INTEGER;
--    var2 VARCHAR2(50);

-- BEGIN
--    var1 := 10;
--    var2 := 'John Doe';

--    DBMS_OUTPUT.PUT_LINE('Number: ' || var1);
--    DBMS_OUTPUT.PUT_LINE('Name: ' || var2);
-- END;
-- /


-- -- Q2 WAP to perform all arithmetic operations in PL/SQL.
-- DECLARE
--    num1 INTEGER := 20;
--    num2 INTEGER := 30;
--    result_add INTEGER;
--    result_sub INTEGER;
--    result_mul INTEGER;
--    result_div NUMBER(10, 2);

-- BEGIN
--    result_add := num1 + num2;
--    result_sub := num1 - num2;
--    result_mul := num1 * num2;
--    result_div := num1 / num2;

--    DBMS_OUTPUT.PUT_LINE('Addition: ' || result_add);
--    DBMS_OUTPUT.PUT_LINE('Subtraction: ' || result_sub);
--    DBMS_OUTPUT.PUT_LINE('Multiplication: ' || result_mul);
--    DBMS_OUTPUT.PUT_LINE('Division: ' || result_div);
   
-- END;
-- /


-- --Q3 WAP to determine whether a person is eligible to vote using IF THEN ELSE statement in PL/SQL.
-- DECLARE
--    age NUMBER := 18;

-- BEGIN
--    IF age >= 18 THEN
--       DBMS_OUTPUT.PUT_LINE('You are eligible to vote.');
--    ELSE
--       DBMS_OUTPUT.PUT_LINE('You are not eligible to vote.');
--    END IF;
-- END;
-- /


-- --Q4 WAP to find whether the given number is even or odd using IF THEN ELSE statement in PL/SQL.
-- DECLARE
--    num INTEGER := 7;

-- BEGIN
--    IF num MOD 2 = 0 THEN
--       DBMS_OUTPUT.PUT_LINE(num || ' is an even number.');
--    ELSE
--       DBMS_OUTPUT.PUT_LINE(num || ' is an odd number.');
--    END IF;
-- END;
-- /


-- -- Q5 WAP to print 1 to 10 in PL/SQL.
-- -- a. Using Exit or Basic Loop
-- DECLARE
--    counter NUMBER := 1;
-- BEGIN
--    LOOP
--       DBMS_OUTPUT.PUT_LINE(counter);
--       counter := counter + 1;
--       EXIT WHEN counter > 5;
--    END LOOP;
-- END;
-- /

-- -- b. Using While Loop
-- DECLARE
--    counter NUMBER := 1;
-- BEGIN
--    WHILE counter <= 5 LOOP
--       DBMS_OUTPUT.PUT_LINE(counter);
--       counter := counter + 1;
--    END LOOP;
-- END;
-- /

-- -- c. Using For Loop

-- DECLARE
-- BEGIN
--    FOR counter IN 1..5 LOOP
--       DBMS_OUTPUT.PUT_LINE(counter);
--    END LOOP;
-- END;
-- /


-- --Q6 WAP to implement function in PL/SQL
-- CREATE OR REPLACE FUNCTION add_numbers(
--    num1 NUMBER,
--    num2 NUMBER
-- ) RETURN NUMBER IS
--    result NUMBER;
-- BEGIN
--    result := num1 + num2;
--    RETURN result;
-- END add_numbers;
-- /

-- DECLARE
--    result_sum NUMBER;
-- BEGIN
--    result_sum := add_numbers(10, 20);
--    DBMS_OUTPUT.PUT_LINE('The sum is: ' || result_sum);
-- END;
-- /


-- -- Q7 WAP to implement procedure in PL/SQL
-- CREATE OR REPLACE PROCEDURE display_message AS
-- BEGIN
--    DBMS_OUTPUT.PUT_LINE('This is a procedure!');
-- END display_message;
-- /
    
-- DECLARE
-- BEGIN
--    display_message;
-- END;
-- /


-- Q8-Q10
-- Create a table for demonstration
-- CREATE TABLE employees (
--    employee_id NUMBER PRIMARY KEY,
--    employee_name VARCHAR2(50),
--    salary NUMBER,
--    last_modified DATE
-- );

-- -- Insert some sample data
-- INSERT INTO employees VALUES (101, 'John Doe', 50000, SYSDATE);
-- INSERT INTO employees VALUES (102, 'Jane Smith', 70000, SYSDATE);


-- --Q8 WAP to implement implicit cursor in PL/SQL
-- DECLARE
--    emp_name employees.employee_name%TYPE;
--    emp_salary employees.salary%TYPE;

-- BEGIN
--    SELECT employee_name, salary INTO emp_name, emp_salary
--    FROM employees
--    WHERE employee_id = 101;

--    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
--    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp_salary);
-- END;
-- /


-- --Q9 WAP to implement explicit cursor in PL/SQL
-- DECLARE
--    emp_name employees.employee_name%TYPE;

--    CURSOR employee_cursor IS
--       SELECT employee_name
--       FROM employees;

-- BEGIN
--    OPEN employee_cursor;
--    LOOP
--       FETCH employee_cursor INTO emp_name;
--       EXIT WHEN employee_cursor%NOTFOUND;

--       DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
--    END LOOP;
--    CLOSE employee_cursor;
-- END;
-- /


--Q10 WAP to implement trigger in PL/SQL
-- Create a trigger
-- CREATE OR REPLACE TRIGGER before_employee_update
-- BEFORE UPDATE ON employees
-- FOR EACH ROW
-- BEGIN
--    :NEW.last_modified := SYSDATE;
-- END before_employee_update;
-- /

-- UPDATE employees SET salary = 55000 WHERE employee_id = 101;

-- SELECT * FROM employees;
