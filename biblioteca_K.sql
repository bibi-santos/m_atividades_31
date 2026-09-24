/*create database gabi_turma_k;*/
/*create table funcionarios
 (
   codfunc int not null auto_increment,
   CPF char(15) not null,
   nome varchar(45) not null,
   salario varchar(45) not null,
   funcao varchar(45) not null,
   primary key(codfunc)
 );*/
 
 /*create table editoras
  (
    coded int not null auto_increment,
    nome varchar(45) not null,
    contato varchar(45) not null,
    primary key(coded)
  );*/
  
 /*create table autores
  (
    codaut int not null auto_increment,
    nome varchar(45) not null,
    nacionalidade varchar(45) not null,
    primary key(codaut)
  );*/
  
 /*create table usuarios 
  (
    codus int not null auto_increment,
    cpf char(45) not null,
    nome varchar(45) not null,
    primary key(codus)
  );*/
  
create table livros
  (
    codliv int not null auto_increment,
    numero int not null,
    titulo varchar(100) not null,
    genero varchar(45) not null,
    edicao varchar(5) not null,
    ano_publi smallint(4) not null,
    codus_fk int not null,
    coded_fk int not null,
    codfunc_fk int not null,
    primary key(codliv),
    foreign key(codus_fk) references usuarios(codus),
    foreign key(coded_fk) references editoras(coded),
    foreign key(codfunc_fk) references funcionarios(codfunc)
  );
  

 