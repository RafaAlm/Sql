

create table members (
	id INT auto_increment,
    nome varchar (100) not null,
    email varchar (255),
    birthDate date,
    primary key (id)
    );
    
    
    create table reminders (
		id INT auto_increment,
        memberId int,
        message varchar(255) not null,
        primary key(id,memberId)
    );
    
 select *from reminders;   
    
insert into members (nome,email,birthDate) values ('rafael','rafa@gmail','1996-05-04');
insert into members (nome,email) values ('edJunior ','ed@');


drop trigger Tg_date_after;

DELIMITER $$
create trigger Tg_date_after
	after insert
	on members for each row 
    
begin 
	
    if new.birthDate is null then 
	insert into reminders (memberID, message) 
	values(new.id,concat('Oi ', new.nome, ' por favor atualize sua data de aniversario'));
	end if;
    
    
end$$

DELIMITER ;


