create database exercicios;

use exercicios;

create table cursos (
tipo int unsigned not null auto_increment,
nome varchar (40) not null,
primary key (tipo)
);

create table instrutor(
id int unsigned not null auto_increment,
nome varchar (50),
telefone varchar (30),
primary key (id)
);

create table cursos_tipo(
id int unsigned not null auto_increment,
nome_curso varchar (50) not null,
instrutor int unsigned not null,
tipo int unsigned not null,
valor double not null,
primary key (id),
constraint fk_id foreign key (id ) references cursos (tipo),
constraint fk_instrutor foreign key (instrutor ) references instrutor (id)
);

create table aluno (
id int unsigned not null auto_increment,
nome varchar (40) NOT NULL,
endereço varchar (40) not null,
email varchar (40) not null,
primary key (id)
);

create table pedido (
id int unsigned not null auto_increment,
aluno int unsigned not null,
datahora datetime not null,
primary key (id),
constraint fk_aluno foreign key (aluno) references aluno(id)
);

create table pedido_detalhe (
pedido int unsigned not null,
curso int unsigned not null,
valor double not null,
primary key (pedido),
constraint fk_pedido foreign key (pedido) references pedido (id),
constraint fk_curso foreign key (curso) references cursos_tipo (id)
);

INSERT INTO cursos (tipo, nome) VALUES (1, 'Banco de dados');
INSERT INTO cursos (tipo, nome) VALUES (2, 'Programação');
INSERT INTO cursos (tipo, nome) VALUES (3, 'Modelagem de dados');

INSERT INTO INSTRUTOR (id, nome, TELEFONE) VALUES (1, 'André Milani', '1111-1111');
INSERT INTO INSTRUTOR (id, nome, TELEFONE) VALUES (2, 'Carlos Tosin', '1212-1212');

INSERT INTO cursos_tipo (id, nome_curso,tipo, instrutor, valor) VALUES (1, 'Java Fundamentos', 2, 2, 270);
INSERT INTO cursos_tipo (id, nome_curso,tipo, instrutor, valor) VALUES (2, 'Java Avançado', 2, 2, 330);
INSERT INTO cursos_tipo (id, nome_curso,tipo, instrutor, valor) VALUES (3, 'SQL Completo', 1, 1, 170);
INSERT INTO cursos_tipo (id, nome_curso,tipo, instrutor, valor) VALUES (4, 'Php Básico', 2, 1, 270);

INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (1, 'José', 'Rua XV de Novembro 72', 'jose@softblue.com.br');
INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (2, 'Wagner', 'Av. Paulista', 'wagner@softblue.com.br');
INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@softblue.com.br');
INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (4, 'Cris', 'Rua Tauney 22', 'cris@softblue.com.br');
INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (5, 'Regina', 'Rua Salles 305', 'regina@softblue.com.br');
INSERT INTO ALUNO (id, nome, endereço, EMAIL) VALUES (6, 'Fernando', 'Av. Central 30', 'fernando@softblue.com.br');

INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (1, 2, '2010-04-15 11:23:32');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (2, 2, '2010-04-15 14:36:21');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (3, 3, '2010-04-16 11:17:45');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (4, 4, '2010-04-17 14:27:22');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (5, 5, '2010-04-18 11:18:19');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (6, 6, '2010-04-19 13:47:35');
INSERT INTO PEDIDO (id, ALUNO, DATAHORA) VALUES (7, 6, '2010-04-20 18:13:44');

INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (1, 1, 270);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (1, 2, 330);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (2, 1, 270);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (2, 2, 330);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (2, 3, 170);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (3, 4, 270);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (4, 2, 330);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (4, 4, 270);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (5, 3, 170);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (6, 3, 170);
INSERT INTO PEDIDO_DETALHE (PEDIDO, CURSO, VALOR) VALUES (7, 4, 270);

ALTER TABLE ALUNO ADD DATA_NASCIMENTO VARCHAR(10);
ALTER TABLE ALUNO ADD INDEX INDEX_ALUNO(id);
ALTER TABLE CURSOs_tipo ADD INDEX INDEX_INSTRUTOR(INSTRUTOR);

UPDATE ALUNO SET endereço = 'Av. Brasil 778' WHERE id = 1;
UPDATE ALUNO SET EMAIL = 'cristiano@softblue.com.br' WHERE id = 4;
UPDATE CURSOs_tipo SET VALOR = VALOR * 1.1 WHERE VALOR < 300;
UPDATE CURSOs_tipo SET nome_curso = 'Php Fundamentos' WHERE nome_curso = 'Php Básico';

select id, nome_curso from cursos_tipo
union
select nome, telefone from instrutor;



CREATE VIEW CURSOS_PROGRAMACAO AS SELECT CURSO, VALOR FROM CURSO INNER JOIN TIPO ON CURSO.TIPO = TIPO.CODIGO WHERE TIPO.TIPO = 'Programação';