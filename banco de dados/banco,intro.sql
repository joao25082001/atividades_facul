use faculdade1adsc; 

CREATE TABLE atleta ( 

-- AUTO_INCREMENT: CHAVE PRIMÁRIA VAI INCREMENTAR NÚMEROS INTEIROS 

-- AUTOMATICAMENTE (SEQUÊNCIA: 1,2,3,4...) 

idAtleta INT PRIMARY KEY AUTO_INCREMENT, 

nome VARCHAR(75), 

dtNasc DATE); 

  

-- ADICIONANDO A COLUNA modalidade NA TABELA atleta 

ALTER TABLE atleta ADD COLUMN modalidade VARCHAR(50); 

  

-- DESCREVER A TABELA atleta 

DESCRIBE atleta; 

DESC atleta; 

  

-- RENOMEANDO A COLUNA dtNasc PARA dataNascimento 

ALTER TABLE atleta RENAME COLUMN dtNasc  

TO dataNascimento; 

   

-- EXCLUINDO O CAMPO modalidade 

ALTER TABLE atleta DROP COLUMN modalidade; 

  

-- MODIFICANDO O TIPO DO CAMPO nome PARA VARCHAR(100) 

ALTER TABLE atleta MODIFY COLUMN nome VARCHAR(100); 

  

-- INSERINDO DADOS NA TABELA atleta 

INSERT INTO atleta VALUES  

(1, 'Kelvin', '2000-10-11'); 

  

-- EXIBINDO TODOS OS CAMPOS DA TABELA ATLETA 

SELECT * FROM atleta; 

  

-- INSERINDO DADOS NA TABELA atleta, SEM SABER QUAL NÚMERO DA SEQUÊNCIA 

-- DO AUTO_INCREMENT 

INSERT INTO atleta VALUES  

(null, 'Meninos do Futebol', '1983-10-24'); 

     

-- INSERINDO DADOS NA TABELA atleta, SEM O CAMPO idAtleta 

-- INSERE AUTOMATICAMENTE A CHAVE PRIMÁRIA DEVIDO A UTILIZAÇÃO DO AUTO_INCREMENT 

INSERT INTO atleta (nome, dataNascimento) VALUES 

('João', '1987-12-09'); 

     

-- INSERINDO UM ATLETA COM O idAtleta = 8, FORA DA SEQUÊNCIA 

INSERT INTO atleta VALUES  

(8, 'Kalvin', '2000-02-11'); 

   

-- EXIBINDO TODOS OS ATLETAS 

SELECT * FROM atleta; 

  

-- ATUALIZAR O DADO idAtleta = 4 ONDE O idAtleta = 8 

UPDATE atleta SET idAtleta = 4 WHERE idAtleta = 8; 

  

-- ATUALIZAR O DADO idAtleta = 5 ONDE O idAtleta = 9 

UPDATE atleta SET idAtleta = 5 WHERE idAtleta = 9; 

  

-- ATUALIZAR O DADO nome = 'Bolt' ONDE O idAtleta = 10 

UPDATE atleta SET nome = 'Bolt' WHERE idAtleta = 10; 

  

-- ATUALIZAR O DADO idAtleta = 6 ONDE O idAtleta = 10 

UPDATE atleta SET idAtleta = 6 WHERE idAtleta = 10; 

  

-- UPDATE SEM WHERE NUNCA É REALIZADO 

-- UPDATE atleta SET idAtleta = 6; 

  

-- INSERINDO UM ATLETA SEM SABER O PRÓXIMO NÚMERO A SER INSERIDO NA CHAVE PRIMÁRIA 

INSERT INTO atleta VALUES  

(null, 'Meninos do Vôlei', '1985-09-24'); 

     

-- EXCLUIR UM REGISTRO DA TABELA atleta, ONDE O idAtleta = 5 

DELETE FROM atleta WHERE idAtleta = 5; 

  

-- EXCLUIR O ATLETA QUE TENHA O idAtleta = 6 

DELETE FROM atleta WHERE idAtleta = 6; 

  

-- EXCLUIR OS ATLETAS COM O idAtleta = 2 E O idAtleta = 3, NO MESMO COMANDO 

DELETE FROM atleta WHERE idAtleta IN (2,3); 

  

-- EXIBIR OS ATLETAS 

SELECT * FROM atleta; 

create table pais (  

  iDpais int primary key auto_increment, 

  nome varchar(15), 

  capital varchar (15) 

  ); 

  insert into pais values   

  (1,'franca','paris'), 

  (null,'argentina','bueno'), 

  (null,'espanha','madrid'); 

  select * from pais; 

  alter table atleta  add column fkpais int; 

   

   alter table atleta add foreign key (fkpais)references pais(iDpais); 

   update atleta set fkpais = 1 where idAtleta = 1; 

   update atleta set fkpais = 2 where idAtleta = 4; 

   update atleta set fkpais = 3 where idAtleta = 9; 

   select * from atleta; 

   select * from pais; 

   select * from atleta join pais on iDpais = fkpais; 

   alter table pais rename column nome to nomepais; 

   select atleta.*, nomepais,capital from atleta join pais on iDpais = fkpais and nomepais = 'franca'; 

-- não coloquei o Idpais para não ficar redundante 

 

 

 

 

-- PARTE 2 

 

 

CREATE TABLE Musica ( 

-- INCREMENTAR AUTOMATICAMENTE A CHAVE PRIMÁRIA INICIANDO PELO NÚMERO 1000 

idMusica int primary key auto_increment, 

titulo VARCHAR(40), 

artista VARCHAR(40), 

genero VARCHAR(40) 

)auto_increment = 1000; 
 

-- DESCREVER A TABELA MÚSICA 

desc Musica; 

INSERT INTO Musica VALUES 

(null, 'Imagina', 'Livinho', 'Funk'), 

(null, 'baby glock', 'Livinho', 'Funk'), 

(null, 'Morena', 'Luan Santana', 'Certanejo');
INSERT INTO MUSICA VALUES
(null,'me beija','isabelly', 'gospel'); 
 SELECT * FROM MUSICA WHERE artista = 'isabelly';


  

CREATE TABLE ALBUM ( 

IDalbum int primary key auto_increment, 

nomealbum varchar(20), 

gravadora varchar (20) 

); 

insert into ALBUM values 

(1,'Lemonade','ilovefunk'), 

(null,'furacao2000', 'kodzila'), 

(null,'ostentação', 'herbertrichards');
insert into  ALbum values
(null,'senhor', 'golpei');
  alter table musica add column fkalbum int;
  alter table musica add foreign key (fkalbum)references album(IDalbum); 
  DESC MUSICA;
  SELECT * FROM MUSICA;
  SELECT * FROM album;
  update musica set fkalbum = 1 where idMusica = 1000; 
  update musica set fkalbum = 2 where idMusica = 1001; 
  update musica set fkalbum = 3 where idMusica = 1002;
  update musica set fkalbum = 5 where idMusica = 1003; 
  select * from musica join album on IDalbum = fkalbum;
select * from musica join album on IDalbum = fkalbum and nomealbum = 'ostentação';
-- aqui coloquei todos os dados caso o select da questão 1 esteja errado

select * from musica join album on IDalbum = fkalbum and nomealbum = 'ostentação';
select * from musica join album on IDalbum = fkalbum and gravadora = 'herbertrichards';


 
  