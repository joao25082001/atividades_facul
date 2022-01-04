use faculdade1adsc;
create table aluno (
RAaluno char primary key,
nome varchar(40),
email varchar (40)

);
create table grupo (
idgrupo int primary key auto_increment,
nome_grupo varchar(12),
descrição  varchar (20)
);
create table professor (
idprof int primary key auto_increment ,
nome_professor varchar (40),
disciplina varchar (40)
) auto_increment=10000;
create table avaliação (

nota char (2),
data_hora datetime
);
insert into grupo values 
(null,'falcão','maquina de escrever'),
(null,'gafanhoto','maquina de sorvete');
insert into professor values
(null,'augusto','2021-09-08 02:08:21'),
(null,'rafa','2021-09-08 02:07:29');
 insert into avaliação values
 (5,'2021-09-08 02:08:21'),
 (6,'2021-09-08 02:07:29');
 update professor set disciplina='matematica' where idprof=10000;
 update professor set disciplina='fisica' where idprof=10001;
 select * from professor;
 
 alter table aluno modify column RAaluno char(8);
 insert into aluno values 
 (01212197,'joao','joao.tenorio@bandtec.com.br'),
 (01212080,'eduardo','eduardocosta@bandtec.com.br');
 alter table aluno  add column fkgrupo int;
 alter table aluno add foreign key (fkgrupo) references grupo(idgrupo) ;
 alter table avaliação add column fkgrupo1 int;
 alter table avaliação add column fkprofessor int;
 alter table avaliação add foreign key (fkgrupo1) references grupo(idgrupo);
  alter table avaliação add foreign key (fkprofessor) references professor(idprof);
select * from avaliação;
 select nome,nome_grupo,nota,nome_professor,data_hora from aluno join grupo join aluno = fkgrupo1= idgrupo join avaliação on fkgrupo= idgrupo join professor on fkprofessor=idprof