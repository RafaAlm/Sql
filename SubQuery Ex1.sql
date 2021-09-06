select FIRST_NAME,LAST_NAME,SALARY FROM employees
where SALARY > (select SALARY from employees where LAST_NAME = "bull");


select FIRST_NAME,LAST_NAME FROM employees
where (select DEPARTMENT_ID from departments where DEPARTMENT_NAME = "IT") = employees.DEPARTMENT_ID;

select SALARY  FROM employees where  LAST_NAME = "Bull";

SELECT 
FIRST_NAME,
LAST_NAME,
SALARY 
from employees where SALARY > (select SALARY  FROM employees where  LAST_NAME = "Bull")
order by SALARY DESC;

select DEPARTMENT_ID FROM departments where DEPARTMENT_NAME = "IT";

select FIRST_NAME,
LAST_NAME,
SALARY
from employees
where DEPARTMENT_ID IN (select DEPARTMENT_ID FROM departments where DEPARTMENT_NAME = "IT");


