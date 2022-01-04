use faculdade1adsc;
create table pessoa (
idpessoa int primary key auto_increment,
data_nascimento date,
profissão varchar (20));
create table gasto (
idgasto int primary key auto_increment,
DATAH date,
valor char(10),
descrição varchar(40)
);
insert into pessoa values
(null,'2020-02-10','cozinheiro'),
(null,'2021-03-09','professor'),
(null,'2021-05-04','fiscal');
insert into gasto values 
(null,'2020-06-01','900.00','compra de tv'),
(null,'2020-04-06','70.00','compra de comida'),
(null,'2020-09-01','820.00','compra de roupa');
select * from pessoa;
select * from gasto;
select * from  pessoa where profissão = 'cozinheiro';
alter table pessoa add column fkgasto int;
alter table pessoa add foreign key (fkgasto) references pessoa(idpessoa);
update  pessoa set fkgasto = 1 where idpessoa= 1;
update  pessoa set fkgasto = 2 where idpessoa= 2;
update  pessoa set fkgasto = 3 where idpessoa= 3;
select * from pessoa join gasto on fkgasto= idgasto;
select * from pessoa join gasto on fkgasto=idgasto where idgasto=1;
update pessoa set profissão='marceneiro' where idpessoa= 1;
select * from pessoa;
delete from pessoa where idpessoa in (1,2,3) ;

