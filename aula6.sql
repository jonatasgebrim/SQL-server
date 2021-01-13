use banco_meu;

create user 'nome'@'localhost'identified by 'andre';

grant all on banco_meu to 'nome'@'localhost' ;


create user 'nome'@'localhost'identified by 'andre';

grant all on * to 'nome'@'localhost';


create user 'nome'@'%'identified by 'andrevv';
grant select on banco_meu.* to 'nome'@'localhost';

grant select on * to 'nome';
insert into cpf (id, cpf) values (8,null);

select * from acessorios;
SET SQL_SAFE_UPDATES = 0;
use negocio;
delete from acessorios;
update  acessorios set id = 3 where id =1;

insert into acessorios (id, descricao, valor, fornecedor) values (1, 'bom' , 20, 'eu');
revoke insert on banco_meu.funcionarios from 'andre'@'%';