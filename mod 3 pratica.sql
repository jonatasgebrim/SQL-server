create database softblue;

use softblue;

create table cursos (
tipo int unsigned not null auto_increment,
nome varchar (40) not null,
preço double   not null ,
instrutor varchar (40) not null,
primary key (tipo)
);
drop table cursos;

create table cursos (
tipo int unsigned not null,
nome varchar (40) not null,
preço double not null,
instrutor varchar (40) not null,
primary key (tipo)
);

create table alunos (
id int unsigned not null,
nome varchar (50) not null,
endereço varchar (50) not null,
email varchar (50) not null,
primary key (id),
constraint fk_cursos foreign key (id) references cursos (tipo) 
);

alter table alunos add data_nascimento varchar (10);

alter table alunos change column data_nascimento nascimento varchar (10) not null;

create index aluno on alunos (nome(10));

create table instrutor (
id int unsigned not null,
nome varchar (40) not null,
telefone varchar (40) not null default ' ',
primary key (id)
);

alter table instrutor add email varchar (100) not null;

create index instrutor on cursos (instrutor(10));

alter table instrutor drop column email;