create database listaGrande1;

create table `listaGrande1`.`tabela1` (id_funcionario mediumint,
nomeFuncionario varchar(50),
salario float,
setor varchar(40));

alter table `listaGrande1`.`tabela1` add primary key (id_funcionario);

drop table `listaGrande1`.`tabela1`; 

insert into `listaGrande1`.`tabela1` (id_funcionario, nomeFuncionario, salario, setor) values ('1000','Thiago Matins','1700.00','Auxiliar Administrativo');
insert into `listaGrande1`.`tabela1` (id_funcionario, nomeFuncionario, salario, setor) values ('1001','Marcos Petronio','1500.00','Promotor');

select * from `listaGrande1`.`tabela1`;

create table `listaGrande1`.`tabela2` (cd_conta mediumint,
nomeDoCliente varchar(50),
saldo float,
possuiBeneficios bit(1),
vinculoEmpregaticio mediumint);

drop table `listaGrande1`.`tabela2`;

insert into `listaGrande1`.`tabela2`(cd_conta, nomeDocliente, saldo, possuiBeneficios, vinculoEmpregaticio) values ('1000','Marcos Petronio','21527.00',1,'1001');
insert into `listaGrande1`.`tabela2`(cd_conta, nomeDocliente, saldo, possuiBeneficios, vinculoEmpregaticio) values ('1001','Thiago Matins','15622.30',1,'1000');

select a.id_funcionario, a.nomeFuncionario, b.saldo, b.possuiBeneficios from `listaGrande1`.`tabela1` a inner join `listaGrande1`.`tabela2` b on a.id_funcionario = b.vinculoEmpregaticio;
select * from `listaGrande1`.`tabela1` a inner join `listaGrande1`.`tabela2` b on a.id_funcionario = b.vinculoEmpregaticio;