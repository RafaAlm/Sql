select FIRST_NAME,LAST_NAME,SALARY FROM employees
where SALARY > (select SALARY from employees where LAST_NAME = "bull");


select FIRST_NAME,LAST_NAME FROM employees
where (select DEPARTMENT_ID from departments where DEPARTMENT_NAME = "IT") = employees.DEPARTMENT_ID;



