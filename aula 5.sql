use banco_meu;

select * from funcionarios;
select *from veiculos;

select *from funcionarios f inner join veiculos v on v.funcionario_id = f.id;
select *from funcionarios f left join veiculos v on v.funcionario_id = f.id
union 
select *from funcionarios f right join veiculos v on v.funcionario_id = f.id;

insert into veiculos (funcionario_id, veiculo, placa) values ( null, 'moto', 'dd-0022');

create table cpf (
id int unsigned not null,
cpf varchar (14) not null,
primary key (id),
constraint fk_cpf foreign key (id) references funcionarios (id)
);

insert into cpf (id, cpf) values ( 2, ' 2222 -3333');
insert into cpf (id, cpf) values ( 3, ' 3333-4444');
insert into cpf (id, cpf) values ( 5, '5555-6666 ');

select *from funcionarios inner join cpf on funcionarios.id = cpf.id;
select *from funcionarios inner join cpf using(id);

create table cliente (
id int unsigned not null auto_increment,
nome varchar (40) not null,
quem_indicou int unsigned,
primary key (id),
constraint fk_quem_indicou foreign key (quem_indicou) references cliente (id)
);

insert into cliente (id, nome, quem_indicou) values ( 1, 'andre ', null);
insert into cliente (id, nome, quem_indicou) values ( 2, 'samuel ', 1 );
insert into cliente (id, nome, quem_indicou) values ( 3, ' carlos', 2);
insert into cliente (id, nome, quem_indicou) values ( 4, 'rafael ', 1);

select * from cliente;

select  a.nome, b.nome from cliente a join cliente b on a.quem_indicou = b.id;

select * from funcionarios where salario >= 1700;
create view funcionarios_a as select * from funcionarios where salario >= 1700;

select * from funcionarios_a;

update funcionarios set salario = 1500 where id = 3;