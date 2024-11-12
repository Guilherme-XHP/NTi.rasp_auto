create database main_porta;

use main_porta;

create table Responsaveis(

    id int primary key auto_increment,
    nome varchar(100),
    rfid int

);

create table Entradas(

    id int primary key auto_increment,
    id_responsavel int,
    data_hora datetime,
    foreign key(id_responsavel) references Responsaveis(id)

);

insert into Responsaveis(nome, rfid) 
values
('Guilherme Estagiario', 123456),
('Cairo Estagiario', 654321),
('Lemos Estagiario', 987654),
('Matheus Estagiario', 456789),
('', 987123),
('Milton Coordenador', 321987),
('Igor Coordenador', 654987);