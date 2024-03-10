create database sprint1;
use sprint1;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(40),
endereço varchar(40),
CPF char(11) unique,
email varchar(40) unique,
senha char(8),
contato varchar(14) unique);

create table Sensor(
idSensor int primary key auto_increment,
nome varchar(40),
valor varchar(40),
medida varchar(10));

create table Regiao(
idRegiao int primary key auto_increment,
localizacao varchar(40),
data_hora datetime,
manutencao datetime,
idUsuario int);