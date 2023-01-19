/*SQL New Assignment*/
/*1. Display the “FIRST_NAME” from Employee table using the alias name as Employee_name.*/
select * from Emplyoee

select First_name as 'Employee name' from Emplyoee;

/*2. Display “LAST_NAME” from Employee table in upper case.*/

select upper (Last_name) from Emplyoee;

/*3. Display unique values of DEPARTMENT from EMPLOYEE table*/

select DISTINCT Department from Emplyoee;


/*4 Display the first three characters of LAST_NAME from EMPLOYEE table.*/

select SUBSTRING (Last_name, 1, 3) from Emplyoee;


/*5 Display the unique values of DEPARTMENT from EMPLOYEE table and prints its length.*/

select distinct (length(Department)) from Emplyoee;


/*6 Display the FIRST_NAME and LAST_NAME from EMPLOYEE table into a single column AS FULL_NAME*/

select concat(First_name,' ',Last_name) As FullName from Emplyoee;


/*.7 DISPLAY all EMPLOYEE details from the employee table.*/

select * from Emplyoee order by First_name desc;


/*.8 Display all EMPLOYEE details order by FIRST_NAME Ascending and DEPARTMENT Descending*/

select * from Emplyoee
ORDER BY First_name ASC,
Department DESC;

/*9 Display details for EMPLOYEE with the first name as “VEENA” and “KARAN” from EMPLOYEE table.*/


/*.10 Display details of EMPLOYEE with DEPARTMENT name as “Admin”.*/

select * from Emplyoee where Department like 'Admin%';


/*.11 DISPLAY details of the EMPLOYEES whose FIRST_NAME contains ‘V’.*/

Select * from Emplyoee where First_name like '%V%';


/*.12 DISPLAY details of the EMPLOYEES whose SALARY lies between 100000 and 500000.*/

Select * from Emplyoee where SALARY between 100000 and 500000;


/*.13 Display details of the employees who have joined in Feb-2020.*/

Select * from Emplyoee where year(Joining_date) = 2020 and month(Joining_date) = 2;


/*14 Display employee names with salaries >= 50000 and <= 100000.*/

select * from Emplyoee where Salary between 50000 and 100000;

/*.16 DISPLAY details of the EMPLOYEES who are also Managers.*/

SELECT DISTINCT Emplyoee.First_name, [Employee Title].Emplyoee_title
FROM Emplyoee
INNER JOIN [Employee Title]
ON Emplyoee.Employee_id = [Employee Title].Emplyoee_ref_id
AND [Employee Title].Emplyoee_title in ('Manager');


/*.17 DISPLAY duplicate records having matching data in some fields of a table.*/

select Employee_id, COUNT(Employee_id)
FROM Emplyoee
GROUP BY Employee_id
HAVING COUNT(Employee_id) > 1;

select * from Emplyoee
select * from [Employee Title]

/*.18 Display only odd rows from a table.*/

select * from Emplyoee where (Employee_id % 2) = 1;



/*.19 Clone a new table from EMPLOYEE table.*/

select * into Employeeclone from Emplyoee;


/*.20 DISPLAY the TOP 2 highest salary from a table.*/

select top 2 *  from Emplyoee order by Salary Asc;


/*.21 DISPLAY the list of employees with the same salary.*/

select * from Emplyoee where Salary in (select salary
     from Emplyoee e  where Emplyoee.Employee_id <> e.Employee_id);


/*.22 Display the second highest salary from a table.*/

 select * from Emplyoee where Salary=(select Max(Salary) from Emplyoee);



 /*.23 Display the first 50% records from a table.*/

 select top 50 percent * from Emplyoee;


 /*24 Display the departments that have less than 4 people in it.*/

select Department from Emplyoee where Employee_id IS NOT NULL
group by Department having COUNT(Employee_id) < 5;


/*.25 Display all departments along with the number of people in there.*/

select Department, COUNT(Department) as 'Number of Workers' from Emplyoee group by Department;


/*.26 Display the name of employees having the highest salary in each department.*/

SELECT t.Department,t.First_name,t.Salary from(SELECT max(Salary) as TotalSalary,Department from Emplyoee group by Department) as TempNew 
Inner Join Emplyoee t on TempNew.Department=t.Department 
 and TempNew.TotalSalary=t.Salary;


 /*.27 Display the names of employees who earn the highest salary.*/


 select * from Emplyoee where(Employee_id, Salary) 
 in(select Employee_id, max(salary) from Emplyoee group by Employee_id)


 /*.28 Diplay the average salaries for each department*/

 select Department,AVG(Salary) as 
AVERAGE_SALARY from Emplyoee group by Department;



/*.29 display the name of the employee who has got maximum bonus*/

select MAX(Bonus_Amount) from [Emplyoee Bonus];



/*.30 Display the first name and title of all the employees*/

select Emplyoee_name as "First_name",


SELECT E.first_name AS "Employee Name", 
   M.first_name AS "Manager"
     FROM employees E 
       JOIN employees M
         ON E.manager_id = M.employee_id;































































































