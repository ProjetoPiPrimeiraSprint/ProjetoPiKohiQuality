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

create table Sensores(
idSensor int primary key auto_increment,
nome varchar(15),
temperaturaUmidade varchar(20),
data_hora datetime default current_timestamp);

create table Armazem(
idArmazem int primary key auto_increment,
modelo varchar (20),
capacidadeTonelada float,
localizacao varchar(50),
responsavel varchar(50));

create table ProdutoeGraos(
idGrao int primary key auto_increment,
nome varchar(20),	
temperaturaIdeal varchar(20),
umidadeIdeal varchar(20));

create table ContatoSimulador(
idContato int primary key auto_increment,
nome varchar(40),
email varchar(40),
mensagem varchar(500));


insert into Usuario(nome,endereco,CPF,email,senha,contato) values
('José Santanna','Rua Inglaterra, 91','09534253319','josesantanna@gmail.com','1535','(18)3265-1329'),
('São João da Silva','R. Com. Bichara Moherdauí, 191','09423442343','saojoao@gmail.com','5698','(11)99935-0594'),
('Geronimo Alves','R. Celestino Gonçalves Bueno, 120','2344689898','geronimo@gmail.com','4002','(11)99918-3851'),
('Fabiana Santos','R. Nove de Julho, 453','43523478822','fabianasantos@gmail.com','8922','(21)3432-5541'),
('Clotilde Ferreira','R. Doce Caminho do Mar 563','34265888523','clotildeferreira@gmail.com','1212','(13)4454-3642');

insert into Sensores(nome,temperaturaUmidade)values
('DHT11','11.8 , 17.5');



insert into Armazem(modelo,capacidadeTonelada,localizacao,responsavel) values
('SAT 0405','64.20','Rua Inglaterra, 91','José Santana'),
('SAT 0508','145.80','R. Com. Bichara Moherdauí, 191','São joão da Silva'),
('SAT 0705','174.70','Rua Celestinho Gonçalves Bueno, 120','Geronimo Alves'),
('SAT 0406','74.20','Rua Nove de Julho, 453','Fabiana Santos'),
('SAT 0811','462','Rua Doce Caminho do Mar, 563','Clotilde Ferreira');

insert into ProdutoeGraos(nome,temperaturaIdeal,umidadeIdeal) values
('Connilon','22°C ~ 26°C','16 ~ 18%'),
('Arábica','19°C ~ 21°C','11 ~ 13%');

insert into ContatoSimulador(nome,email,mensagem) values
('Henrique de Oliveira Perez','henriqueperez@hotmail.com','Olá, tudo bem? gostei da proposta de vocês, gostaria de nogociar!'),
('Sheila Fagundes Neto','sheilafagundes@gmail.com','Oi, gostei dos valores informados poderiamos negociar?'),
('Cleber Florentino','cleberflorentino@outlook.com','Tudo bem? gostei dos valores poderiam entrar em contato?'),
('Anastacia Pereira da Silva','anastacia.pereira@gmail.com','Oi, gostaria de fazer um orçamento'),
('Mauricio de Souza','mauriciodesouza@hotmail.com','Olá, gostaria de saber seus valores, poderia entrar em contato?');


select * from Usuario;
select idUsuario as 'ID Usuário', nome as 'Nome', endereco as 'Endereço', CPF, email as 'E-mail', senha as 'Senha', contato as Contato from Usuario;
select * from Usuario where idUsuario=3;

select * from Sensores;
select idSensor as 'ID Sensor', nome as 'Nome', temperaturaUmidade as 'Temperatura e Umidade', data_hora as 'Data e Hora' from Sensores;
select * from Sensores where nome = 'DHT11';

select * from Armazem;
select idArmazem as 'ID Armazém', modelo as 'Modelo', capacidadeTonelada as 'Capacidade em Toneladas', localizacao as 'Localização', responsavel as 'Responsável' from Armazem;
select * from Armazem where responsavel like '%José%';

select * from ProdutoeGraos;
select idGrao as 'ID Grão', nome as 'Nome', temperaturaIdeal as 'Temperatura Ideal',umidadeIdeal as 'Umidade Ideal' from ProdutoeGraos;
select * from ProdutoeGraos where nome = 'Connilon';

select * from ContatoSimulador;
select idContato as 'ID Contato', nome as 'Nome', email as 'E-mail', mensagem as 'Mensagem' from ContatoSimulador;
select * from ContatoSimulador where mensagem like '%contato%';

