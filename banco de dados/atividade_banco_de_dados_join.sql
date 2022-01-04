use faculdade1adsc;
create table pet(
idpet int  primary key auto_increment,
nome varchar(20),
tipo varchar (10),
raça varchar (10),
nascimento date )auto_increment=101;
create table cliente (
idcliente int primary key auto_increment,
nome varchar(40),
telefone_fixo char(10),
celular char(11),
endereço varchar (40)
);
 insert into pet values
 (null,'negao','dog','poodle','2020-05-05'),
 (null,'estrela','cat','majenta','2018-04-05'),
 (null,'linguinha','lagarto','camaleao','2014-07-07');
insert into cliente values
(null,'solange souza',1125115733,11977751560,'rua da ponte'),
(null,'bea souza',1122223333,11933334444,'rua roberto'),
(null,'rodrigo jesus',1144445555,11955556666,'rua diamante');
select * from cliente join pet;
alter table pet add column fkcliente int;
alter table pet add foreign key (fkcliente) references pet(idpet);
alter table cliente modify nome varchar(30);
select * from pet where raça = 'poodle';
select * from pet where tipo = 'dog';
select nome,nascimento from pet;
select * from cliente order by nome asc;
select * from cliente order by nome desc;
select * from pet order by nome asc;
select * from cliente order by endereço desc;
select * from pet where nome like 'n%';
select * from cliente where nome like  '%souza' ;
update cliente set telefone_fixo=1199999999 where idcliente=2;
select * from cliente;
select * from pet;
 update pet set fkcliente= 101 where idpet = 101;
 update pet set fkcliente= 101 where idpet = 102;
 update pet set fkcliente= 102 where idpet = 103;
 select * from pet join cliente;
 select * from pet join cliente on fkcliente where idcliente =1;
delete from pet where idpet=103;
select * from pet;
truncate table pet;
truncate table cliente;
 
 

 