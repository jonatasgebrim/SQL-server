create database exercicios;

use exercicios;

create table cursos (
tipo int unsigned not null auto_increment,
nome varchar (40) not null,
primary key (tipo)
);

create table instrutor(
id int unsigned not null,
nome varchar (50),
telefone int unsigned not null,
primary key (id)
);

create table cursos_tipo(
id int unsigned not null,
instrutor int unsigned not null,
nome_curso varchar (50) not null,
valor int unsigned not null default '0',
primary key (id)
);

create table aluno (
id int unsigned not null,
nome varchar (40) NOT NULL,
endereço varchar (40) not null,
email varchar (40) not null,
primary key (id)
);

create table pedido (
id int unsigned not null auto_increment,
id_2 int unsigned not null,
dia varchar(40) not null,
hora varchar (40) not null,
primary key (id)
);

insert into cursos_tipo ( id, instrutor, nome_curso, valor) value (1, 2, 'java fundamentos',  270);
insert into cursos_tipo ( id, instrutor, nome_curso, valor) value (2, 2, 'java vançado',  330);
insert into cursos_tipo ( id, instrutor, nome_curso, valor) value (3, 1, 'sql completo',  270);
insert into cursos_tipo ( id, instrutor, nome_curso, valor) value (4, 2,  ' php basico',  170);
insert into cursos_tipo ( id, instrutor, nome_curso, valor) value (5, 1, 'logica',  270);

insert into pedido (id, id_2, dia, hora) value (1, 2, '15/04/20101', '11:23:32');
insert into pedido (id, id_2, dia, hora) value ( 2, 2, '15/04/2010', '14:36:21');
insert into pedido (id, id_2, dia, hora) value (3, 3, '16/04/2010', '11:17:452');
insert into pedido (id, id_2, dia, hora) value (4, 4, '17/04/20101', '14:27:22');

insert into aluno ( id, nome, endereço, email) value ( 1, 'josé', 'rua xv de novembro 72', 'jose@softblue.com.br');
insert into aluno ( id, nome, endereço, email) value (  2, 'wagner', 'av. paulista', 'wagner@softblue.com.br');
insert into aluno ( id, nome, endereço, email) value (  3, 'emílio', 'rua lajes 103', 'emilio@softblue.com.br');
insert into aluno ( id, nome, endereço, email) value (  4, 'cris', 'rua salles 305', 'cris@softblue.com.br');
insert into aluno ( id, nome, endereço, email) value (  5, 'regina', 'rua tauney 22', 'regina@softblue.com.br');
insert into aluno ( id, nome, endereço, email) value (  6, 'fernando ', 'av. central 30', 'fernando@softblue.com.br');

select* from aluno;

select nome_curso, valor from cursos_tipo;

update aluno set endereço = ' av. brasil 778'  where id = 1;

update aluno set email = 'cristiano@softblue.com.br' where id = 4;

delete from  aluno where id =2;
 use exercicios;

