-- 1.Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários que têm um gerente
-- e trabalharam em um departamento com sede nos EUA.

select FIRST_NAME, LAST_NAME from employees
where MANAGER_ID in (select EMPLOYEE_ID 
from employees where department_id in (select DEPARTMENT_ID from departments where
 LOCATION_ID in (select LOCATION_ID from locations where COUNTRY_ID = 'US' )));


-- 2. Escreva uma consulta para encontrar o nome (first_name, last_name) dos funcionários que são gerentes.

select 
FIRST_NAME, LAST_NAME
 from employees
where EMPLOYEE_ID IN (select MANAGER_ID from employees);

-- 3.Escreva uma consulta para encontrar o nome (first_name, last_name) e o salário dos funcionários cujo salário é maior 
-- que o salário médio.

select
*from employees
where SALARY > (select avg(SALARY) from employees);
































