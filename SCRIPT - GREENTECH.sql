create database Greentech;
use Greentech;

-- TABELA 1 EMPRESAS --
create table Empresas (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar (100),
CNPJ char (14),
idGestor int,
login varchar (20),
senha varchar (45)
);

-- INSERÇÃO DE DADOS TABELA 1 --
insert into Empresas Values 
(null, 'Tomates Olimpus', '12841292000174', '1', 'OlimpusGreenTech99', 'Elisium'),
(null, 'Brasil Tomates', '40091179000154', '2', 'BrasilGreenTech77', 'AgroTomate');

-- TABELA 2 --
create table Gestor (
idGestor int primary key auto_increment,
nome varchar (45),
numero char (11),
email varchar (45)
);

-- INSERÇÃO DE DADOS TABELA 2 --
insert into Gestor Values 
(null, 'Roberto Rofrigues', '1198746712', 'roberto@rodriguez.sptech.com'),
(null, 'Karina Elena', '1194637871', 'karina@elena.sptech.com');

-- TABELA 3 --
create table Estufas (
idEstufa int primary key auto_increment,
idEmpresa int,
identificador varchar (45)
);

-- INSERÇÃO DE DADOS TABELA 3 --
insert into Estufas Values 
(null, '1', 'Persefone'),
(null, '1', 'Apolo'),
(null, '2', 'Estufa-1A'),
(null, '2', 'Estufa-2A');

-- TABELA 4 --
create table Monitoramento (
idMonitoramento int primary key auto_increment,
temperatura decimal (5,2),
umidade decimal (5,2),
hora time,
dat date,
idEstufa int
);

-- INSERÇÃO DE DADOS TABELA 4 --
insert into Monitoramento Values 
(null, 18.00, 60.00, '18:30:00', '2021-12-01', '1' ),
(null, 19.00, 70.00, '18:35:00', '2021-12-01', '1' ),
(null, 21.00, 80.00, '18:40:00', '2021-12-01', '1' ),
(null, 25.00, 67.00, '06:40:00', '2021-12-05', '2' ),
(null, 12.00, 85.00, '06:45:00', '2021-12-05', '2' ),
(null, 30.00, 50.00, '06:50:00', '2021-12-05', '2' );

-- SELECTS --
-- MOSTRAR MONITORAMENTO APENAS DE ESTUFAS ESPECIFICAS --
select * from monitoramento where idEstufa like 1;

-- MOSTRAR APENAS ESTUFAS DE EMPRESAS ESPECIFICAS --
select * from Estufas where idEmpresa like 2;

-- MOSTRAR APENAS O MONITORAMENTO DE ESTUFAS QUE PASSARAM DE ALGUM PARAMETRO --
select * from monitoramento where temperatura > 20;
select * from monitoramento where umidade > 50;

-- MOSTRAR APENAS O MONITORAMENTO DE ESTUFAS DE EMPRESAS ESEPECÍFICAS QUE PASSARAM DE ALGUM PARAMETRO --
select * from monitoramento where idEstufa like 1 and temperatura > 20;
select * from monitoramento where idEstufa like 2 and umidade > 70;
