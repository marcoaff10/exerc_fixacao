create database exerc_fixacao;

use exerc_fixacao;

create table departamentos(
codigo_depto int not null,
nome varchar(30) not null,
localizacao varchar(30) not null,
primary key(codigo_depto));

create table funcionarios(
codigo_func int not null,
codigo_depto int not null,
primeiro_nome varchar(20) not null,
segundo_nome varchar(20) not null,
ultimo_nome varchar(20) null,
data_nasc date not null,
cpf varchar(14) not null unique,
rg varchar(13) not null,
endereco varchar(60) not null,
cep varchar(10) not null,
cidade varchar(30) default 'Itapira' not null,
fone_res varchar(14) not null,
fone_cel varchar(15) not null,
funcao varchar(30) not null,
salario decimal(8.2) not null,
primary key(codigo_func),
foreign key(codigo_depto) references departamentos(codigo_depto));

select primeiro_nome, segundo_nome, ultimo_nome from funcionarios
order by ultimo_nome;

select * from funcionarios order by cidade;

select * from funcionarios where salario >1000
order by primeiro_nome, segundo_nome, ultimo_nome;

select data_nasc, primeiro_nome from funcionarios
order by data_nasc, primeiro_nome desc ;

select ultimo_nome, primeiro_nome, segundo_nome, fone_res, fone_cel,
 endereco, cidade from funcionarios;
 
 select sum(salario) as total from funcionarios;
 
 select count(*) as total_funcionarios from funcionarios;
 
 
select avg(salario) as media from funcionarios;


select primeiro_nome from funcionarios where cidade = 'Itapira'
 and funcao = 'Recepcionista';


