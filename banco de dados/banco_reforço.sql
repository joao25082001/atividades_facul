 create database reforço;
 use reforço;
 create table sala(
 id_sala int primary key auto_increment,
 nome_sala varchar(40)
 );
  insert into sala(nome_sala) values
  ('sala_a'),
  ('sala_b'),
  ('sala_c');
  select * from sala;
  create table notbook(
     id_not int primary key auto_increment,
     nome_not varchar(40),
     modelo varchar (40),
     sistema varchar (40)
     );
alter table notbook add check (sistema='windows' or sistema='linux');
alter table notbook modify column  id_not int  auto_increment,auto_increment=1000;
alter table notbook add column fk_sala int;
insert into notbook(nome_not,modelo,sistema) values
('not1','hp preta','windows'),
('not2','hp preta','windows') ,
('not3','hp preta','windows'),
('not4','hp preta','linux') ;
insert into notbook(nome_not,modelo,sistema) values
('not4','hp branca','linux'); 
select * from notbook;     
alter table notbook add foreign key (fk_sala) references sala(id_sala);
select * from sala join notbook on id_sala=fk_sala where nome_sala = 'sala_b';
select * from sala join notbook on id_sala=fk_sala;
describe notbook;
update notbook set fk_sala=1 where id_not =1000;
update notbook set fk_sala=2 where id_not =1001;
update notbook set fk_sala=3 where id_not =1002;
delete from notbook where id_not = 1001;

  
