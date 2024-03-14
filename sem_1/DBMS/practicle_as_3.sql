--  Q1 Create Employee Table with the following Records
--    ENO  ENAME        DEPT        SALARY  DOJ        BRANCH
--    E101   Amit       Production  45000   12-MAR-01  Bangalore
--    E102   Amit       HR          70000   03-JUL-02  Bangalore
--    E103   sunita     Management  120000  11-JAN-01  mysore
--    E105   sunita     IT          67000   01-AUG-01  mysore
--    E106   mahesh     Civil       145000  20-SEP-03  Mumbai
create table employee(
 eno varchar(20),
 ename varchar(30),
 dept varchar(30),
 salary int,
 doj date,
 branch varchar(30)
);

insert into employee values('E101', 'Amit', 'Production',45000,'12-MAR-01','Banglore');
insert into employee values('E102', 'Amit', 'HR',70000,'03-JUL-02','Banglore');
insert into employee values('E103', 'Sunita', 'Management',120000,'11-JAN-01','Mysore');
insert into employee values('E105', 'Sunita', 'IT',67000,'01-AUG-01','Mysore');
insert into employee values('E106', 'Mahesh', 'Civil',145000,'20-SEP-03','Mumbai');


-- Q2

-- 1 Display all the fields of employee table
select * from employee;


-- 2 Retrieve employee number and their salary
select eno, salary from employee;


-- 3 Retrieve average salary for employee table
select avg(salary) as avg_salary from employee;


-- 4 Retrieve total number of employee.
select count(eno) as total_emp from employee;


-- 5 Retrieve unique name of employee.
select distinct ename from employee;


-- 6 Display name of employee in descending order.
select ename from employee order by ename DESC;


-- 7 Display details of employee whose name is AMIT and salary greater than 50000.
select * from employee where ename='Amit' and salary>50000;


-- 8 Display details of employee whose Dept name is IT or salary less than 100000.
select * from employee where dept='IT' or salary<100000;


-- 9 Retrieve total salary of employee group by employee name and count similar names
SELECT ename, COUNT(*) AS name_count, SUM(salary) AS Total_salary
FROM employee
GROUP BY ename;


-- 10 Retrieve total salary of employee group by employee name which is greater than > 120000.
SELECT ename, SUM(SALARY) AS Total_Salary
FROM EMPLOYEE
WHERE SALARY > 120000
GROUP BY ename;



