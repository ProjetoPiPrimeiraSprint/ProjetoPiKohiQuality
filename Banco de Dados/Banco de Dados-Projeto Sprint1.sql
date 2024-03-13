create database sprint;

use sprint;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(40),
endereço varchar(40),
CPF char(11) unique,
email varchar(40) unique,
senha char(8),
contato varchar(14) unique);

create table SensorUmidade(
idSensor int primary key auto_increment,
nome varchar(40),
valor varchar(40),
data_hora datetime default current_timestamp);

create table SensorTemperatura(
idSensor int primary key auto_increment,
nome varchar(40),
valor varchar(40),
data_hora datetime default current_timestamp);


create table Regiao(
idRegiao int primary key auto_increment,
localizacao varchar(40),
data_hora datetime,
manutencao datetime,
idUsuario int);

create table Armazem(
idArmazem int primary key auto_increment,
nome varchar (50),
capacidade float,
localização varchar(50),
responsavel varchar(50));

create table ProdutoeGraos(
idGrão int primary key auto_increment,
nome varchar(30),	
especificacoes varchar(60),
umidade float);
