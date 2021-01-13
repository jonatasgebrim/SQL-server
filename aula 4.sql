use banco_meu;

insert into funcionarios (id, nome , salario, departamento) values (2, 'Fernado', 1400, 'TI');
insert into funcionarios ( nome , salario, departamento) values ( 'LOLA', 1440, 'rh');
insert into funcionarios ( nome , salario, departamento) values ( 'JOAO', 1460, 'rh');
insert into funcionarios ( nome , salario, departamento) values ( 'JACOBINO', 1470, 'rh');
select * from funcionarios;

select * from funcionarios where salario > 1450;
select * from funcionarios where nome = 'lola';
set sql_safe_updates = 0;
update funcionarios set salario = round(salario * 1.1, 2) ;


delete from funcionarios where id = 4;

use banco_meu;
insert into veiculos (funcionario_id, veiculo, placa) values (1, 'carro', 'dd-4444');
insert into veiculos (funcionario_id, veiculo, placa) values (2, 'carro', 'dd-555');

update veiculos set funcionario_id = 5 where id = 2;

insert into salarios (faixa, inicio, fim) values  ('analista pro', 1000, 2000);
insert into salarios (faixa, inicio, fim) values  ('analista ultra pro', 1100, 2100);
select * from salarios;

select nome as escravos from funcionarios f where f.salario > 1500;

select * from funcionarios where nome = 'fernado' 
union 
select * from funcionarios where id = 3;