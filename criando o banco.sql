CREATE DATABASE banco_meu;	
USE banco_meu;
CREATE TABLE funcionarios (
id int unsigned not null auto_increment, 
nome varchar(45) not null,
salario double not null default '0',
departamento varchar (45) not null,
PRIMARY KEY (id) 
);

CREATE TABLE veiculos (
id int unsigned not null auto_increment,
funcionario_id int unsigned default null,
veiculo varchar (40) not null default ' ',
placa varchar (20) not null default ' ',
primary key (id),
constraint fk_veiculos_funcionarios foreign key (funcionario_id) references funcionarios (id)

);
create table salarios (
faixa varchar (45) not null,
inicio double not null,
fim double not null,
primary key (faixa)
);

alter table funcionarios change column nome mome_func varchar (50) not null;
alter table funcionarios change column mome_func nome varchar (50) not null;

drop table salarios;

create index nome on funcionarios (nome(9));

use banco_meu;



