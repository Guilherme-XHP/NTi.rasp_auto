create database main_porta;

use main_porta;

create table Responsaveis(

    id integer primary key autoincrement,
    nome varchar(100),
    rfid int

);

create table Entradas(

    id integer primary key autoincrement,
    id_responsavel int,
    data_hora datetime,
    tentativas int,
    foreign key(id_responsavel) references Responsaveis(id)

);

insert into Responsaveis(nome, rfid) 
values
('Guilherme Estagiario', 839415080477),
('Cairo Estagiario', 703562360156),
('Lemos Estagiario', 1044916643582),
('Matheus Estagiario', 838765225570),
('Gabriel Estagiario', 16887949010),
('Milton Coordenador', 632455800377),
('Igor Coordenador', 768988849744),
('Mauro TI', 85575050994),
('Cairo Estagiario - Reserva', 16286389730),
('Gabriela Estagiaria - Reserva', 291143456412);
