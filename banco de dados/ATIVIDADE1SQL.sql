-- criar banco de dados 

CREATE DATABASE ATLETA; 

-- SELECIONE O BANCO DE DADOS ATLETA 

USE ATLETA; 

CREATE table ATLETAS ( 

-- NOME_DO_CAMPO PK 

IDatleta int  primary key, 

nome VARCHAR (40), 

MODALIDADE VARCHAR (40), 

QTDMEDALHAS INT 

); 

  

-- INSERINDO O PRIMEIRO ATLETA 

INSERT INTO ATLETAS VALUES 

(1,'Carlos','Judo',3), 

(2,'Roberto','Judo',3), 

(3,'Marina','futebol',2), 

(4,'eduardo','futebol',2), 

(7,'marcio','futebol',2); 

  

  select idatleta,nome, modalidade, qtdmedalhas from ATLETAS; 

  select nome,qtdmedalhas from ATLETAS; 

  select modalidade from ATLETAS where modalidade= 'judo'; 
  
  select * from ATLETAS order by modalidade; 
  select * from ATLETAS order by modalidade desc;
  select NOME from ATLETAS WHERE NOME LIKE '%S%';
  SELECT NOME FROM ATLETAS WHERE NOME LIKE 'E%';
  select NOME FROM ATLETAS WHERE NOME LIKE '%O';
  SELECT NOME FROM ATLETAS WHERE NOME LIKE '%R__';
  
  DROP table ATLETAS;
  -- criar banco de dados 

CREATE DATABASE MUSICA; 

-- SELECIONE O BANCO DE DADOS ATLETA 

USE MUSICA; 

CREATE table MUSICA ( 

-- NOME_DO_CAMPO PK 

IDMUSICA int  primary key, 

TITULO VARCHAR (40), 

ARTISTA VARCHAR (40), 

GENERO VARCHAR(40)
);

  

-- INSERINDO A PRIMEIRA MUSICA 

INSERT INTO MUSICA VALUES 

(1,'VIDA LOKA','RACIONAIS','RAP'), 

(2,'VIDA LOKA PT2','RACIONAIS','RAP'), 

(3,'A VITIMA','RACIONAIS','RAP'), 

(4,'UM BOM LUGAR','SABOTAGE','RAP'),
(5,'FAVELA SINISTRA','FACÇÃO CENTRAL','RAP'),
(6,'ZONA SUL','SABOTAGE','RAP'),
(7,'SOZINHO','MARSHEMELLO','ELETRONICA'); 

  

  select IDMUSICA,TITULO,ARTISTA,GENERO from MUSICA; 

  select TITULO,ARTISTA from MUSICA; 

  select TITULO from MUSICA where GENERO= 'RAP'; 
  SELECT TITULO FROM MUSICA WHERE ARTISTA='RACIONAIS';
  select * from MUSICA order by ARTISTA; 
  select * from MUSICA order by ARTISTA desc;
  SELECT TITULO FROM MUSICA WHERE TITULO LIKE 'V%';
  SELECT ARTISTA FROM MUSICA WHERE ARTISTA LIKE '%E';
  SELECT GENERO FROM MUSICA WHERE GENERO LIKE '%A_';
  SELECT TITULO FROM MUSICA WHERE TITULO LIKE '%K_';
  
  DROP TABLE MUSICA
  