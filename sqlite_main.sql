create database main_porta

use main_porta

create table Responsaveis(

    id integer primary key autoincrement,
    nome varchar(100),
    rfid int

);

create table Entradas(

    id integer primary key autoincrement,
    id_responsavel int,
    data_hora datetime,
    foreign key(id_responsavel) references Responsaveis(id)

);

/* 
  A seguinte inserção foi modificada para fins de segurança
  Os nomes dos estagiários e coordenadores, bem como os números de RFID, foram alterados.
*/
insert into Responsaveis(nome, rfid) 
values
('Estagiario 1', 123456789012),
('Estagiario 2', 987654321098),
('Estagiario 3', 112233445566),
('Estagiario 4', 665544332211),
('Estagiario 5', 123123123123),
('Coordenador 1', 456456456456),
('Coordenador 2', 789789789789);