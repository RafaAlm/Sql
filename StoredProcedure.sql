DELIMITER $$

CREATE PROCEDURE Totalemployees(out total int)
BEGIN
    
    SET total = (select count(*) from employees);
    
END $$ 
DELIMITER ;

select @total as Total_Countries;




