create database sprint;

use sprint;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(40),
endereco varchar(40),
CPF char(11) unique,
email varchar(40) unique,
senha char(8),
contato varchar(14) unique);

create table SensorUmidade(
idSensor int primary key auto_increment,
nome varchar(15),
valor varchar(10),
data_hora datetime default current_timestamp);

create table SensorTemperatura(
idSensor int primary key auto_increment,
nome varchar(15),
valor varchar(10),
data_hora datetime default current_timestamp);

create table Armazem(
idArmazem int primary key auto_increment,
modelo varchar (20),
capacidadeTonelada float,
localizacao varchar(50),
responsavel varchar(50));

create table ProdutoeGraos(
idGrão int primary key auto_increment,
nome varchar(20),	
temperatura varchar(20),
umidade varchar(20));


insert into Usuario(nome,endereco,CPF,email,senha,contato) values
('José Santanna','Rua Inglaterra, 91','09534253319','josesantanna@gmail.com','1535','(18)3265-1329'),
('São João da Silva','R. Com. Bichara Moherdauí, 191','09423442343','saojoao@gmail.com','5698','(11)99935-0594'),
('Geronimo Alves','R. Celestino Gonçalves Bueno, 120','2344689898','geronimo@gmail.com','4002','(11)99918-3851'),
('Fabiana Santos','R. Nove de Julho, 453','43523478822','fabianasantos@gmail.com','8922','(21)3432-5541'),
('Clotilde Ferreira','R. Doce Caminho do Mar 563','34265888523','clotildeferreira@gmail.com','1212','(13)4454-3642');

insert into SensorUmidade(nome,valor)values
('EE160','35.8'),
('EE072','27.53'),
('EE212','26.68'),
('EE260','25.20'),
('EE23','27.36');

insert into SensorTemperatura(nome,valor)values
('EE074','19.5'),
('EE431','17.6'),
('EE441','18.9'),
('EE471','14.8'),
('EE889','16.4');

insert into Armazem(modelo,capacidadeTonelada,localizacao,responsavel) values
('SAT 0405','64.20','Rua Inglaterra, 91','José Santana'),
('SAT 0508','145.80','R. Com. Bichara Moherdauí, 191','São joão da Silva'),
('SAT 0705','174.70','Rua Celestinho Gonçalves Bueno, 120','Geronimo Alves'),
('SAT 0406','74.20','Rua Nove de Julho, 453','Fabiana Santos'),
('SAT 0811','462','Rua Doce Caminho do Mar, 563','Clotilde Ferreira');

insert into ProdutoeGraos(nome,temperatura,umidade) values
('Connilon','22°C ~ 26°C','16 ~ 18%'),
('Arábica','19°C ~ 21°C','11 ~ 13%');


select * from Usuario;
select * from Usuario where idUsuario=3;

select * from SensorUmidade;
select * from SensorUmidade where nome = 'EE23';

select * from SensorTemperatura;
select * from SensorTemperatura where valor like '%19%';

select * from Armazem;
select * from Armazem where responsavel like '%José%';

