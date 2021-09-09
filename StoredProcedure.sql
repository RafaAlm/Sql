DELIMITER //

CREATE PROCEDURE countemployees(
	in total float

)
BEGIN
    
select count(*) into total from employees;
select total;    
END // 
DELIMITER ;


call countemployees(10);





