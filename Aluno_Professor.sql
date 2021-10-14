create table professor(
	cpf int primary key auto_increment,
    nome varchar(50),
    idade varchar(5)
);

create table aluno(
	idAluno int primary key auto_increment,
    nome varchar(50),
    idade varchar(5),
    nomedoResponsavel varchar(50),
    fk_Professor int,
    foreign key(fk_Professor) references professor(cpf)
);

create table disciplina(
	nomeDisciplina varchar(50) not null,
    idDisciplina int primary key auto_increment
);

create table frequenta(
	fk_Disciplina int,
    fk_Aluno_Id_Aluno int,
    foreign key(fk_Disciplina) references disciplina(idDisciplina),
    foreign key( fk_Aluno_Id_Aluno) references aluno(idAluno)
);

insert into professor(nome, idade) values ("Alciomar", 28);
insert into professor(nome, idade) values ("Thais", 32);
insert into professor(nome, idade) values ("Claudio", 35);

insert into aluno(nome, idade,nomedoResponsavel) values ("Rafael", 25, "Nivaldo");
insert into aluno(nome, idade,nomedoResponsavel) values ("Lucas", 28, "Darlene");
insert into aluno(nome, idade,nomedoResponsavel) values ("Daniel", 20, "Joelma");

insert into disciplina(nomeDisciplina) values ("Engenharia de software");
insert into disciplina(nomeDisciplina) values ("Calculo");
insert into disciplina(nomeDisciplina) values ("Banco de dados");
insert into disciplina(nomeDisciplina) values ("Sistema operacional");
insert into disciplina(nomeDisciplina) values ("Programção OO");

insert into frequenta(fk_Disciplina,fk_Aluno_Id_Aluno) values (1,2);
insert into frequenta(fk_Disciplina,fk_Aluno_Id_Aluno) values (2,2);
insert into frequenta(fk_Disciplina,fk_Aluno_Id_Aluno) values (3,2);

select * from aluno as A
inner join disciplina as d on d.idDisciplina = A.idAluno
inner join frenquenta as F



select *from frequenta;