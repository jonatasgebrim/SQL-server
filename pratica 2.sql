use banco_meu;

show engines;

create table contas (
id int unsigned not null auto_increment,
titular varchar (40) not null,
saldo double not null,
primary key (id)
)
engine =InnoDB;

insert into contas (titular, saldo)  values ('andre', 1000);
insert into contas (titular, saldo) values ('marcos', 1500 );
insert into contas (titular, saldo) values ('rafael', 1800);
insert into contas (titular, saldo) values ('cassia', 2200);

select * from contas;

start transaction;
update contas set saldo = saldo -100 where id = 1;
update contas set saldo = saldo +100 where id = 2;
rollback;

start transaction;
SET SQL_SAFE_UPDATES = 0;
update contas set saldo = saldo * 1.03 ;

create table pdidos(
id int unsigned not null auto_increment,
descrição varchar (100) not null,
valor double not null default '0',
pago varchar (10) not null default 'não',
primary key (id)
);
insert into pdidos (descrição, valor) values ( 'tv', 2500);
insert into pdidos (descrição, valor) values ( 'frigobar', 1999);
insert into pdidos (descrição, valor) values ( 'forno', 500);

select * from pdidos;

call varginha ();


create table estoque (
id int unsigned not null auto_increment,
dresc varchar (40),
quantidade int unsigned not null,
primary key (id)
);

create trigger colombo 
before insert on estoque for each row
caLL varginha ();

insert into estoque (dresc, quantidade) values ('fogão', '5');

use negocio;

insert into acessorios (id, descricao, valor, fornecedor) values (1, 'bom', 45, 'pedro');

truncate negocio.acessorios;
select*from acessorios;