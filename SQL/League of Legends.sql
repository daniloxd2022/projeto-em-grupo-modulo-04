CREATE DATABASE league_of_legends
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE league_of_legends;

CREATE TABLE Partida (
id BIGINT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(40),
PRIMARY KEY(id)
);

CREATE TABLE Informações_da_partida(
id BIGINT NOT NULL AUTO_INCREMENT,
Liga VARCHAR(10),
Data DATE,
Partida_id BIGINT,
Time_azul_tag VARCHAR(3),
Time_azul_resultado VARCHAR(10),
Time_vermelho_resultado VARCHAR(10),
Time_vermelho_tag VARCHAR(3),
Duração_da_partida TIME,
Topo_azul VARCHAR(10),
Campeão_topo_azul VARCHAR(10),
Caçador_azul VARCHAR(10),
Campeão_caçador_azul VARCHAR(10),
Meio_azul VARCHAR(10),
Campeão_meio_azul VARCHAR(10),
Atirador_azul VARCHAR(10),
Campeão_atirador_azul VARCHAR(10),
Suporte_azul VARCHAR(10),
Campeão_suporte_azul VARCHAR(10),
Topo_vermelho VARCHAR(10),
Campeão_topo_vermelho VARCHAR(10),
Caçador_vermelho VARCHAR(10),
Campeão_caçador_vermelho VARCHAR(10),
Meio_vermelho VARCHAR(10),
Campeão_meio_vermelho VARCHAR(10),
Atirador_vermelho VARCHAR(10),
Campeão_atirador_vermelho VARCHAR(10),
Suporte_vermelho VARCHAR(10),
Campeão_suporte_vermelho VARCHAR(10),
PRIMARY KEY (id),
FOREIGN KEY (Partida_id) REFERENCES Partida(id)
);

CREATE TABLE Estruturas (
id BIGINT NOT NULL AUTO_INCREMENT,
Partida_id BIGINT,
Times VARCHAR(10),
Tempo TIME,
Rota VARCHAR(10),
Tipo VARCHAR(26),
PRIMARY KEY(id),
FOREIGN KEY(Partida_id) REFERENCES Partida(id)
);

CREATE TABLE Banimentos(
id BIGINT NOT NULL AUTO_INCREMENT,
Partida_id BIGINT,
Times VARCHAR(10),
Ban_1 VARCHAR(10),
Ban_2 VARCHAR(10),
Ban_3 VARCHAR(10),
Ban_4 VARCHAR(10),
Ban_5 VARCHAR(10),
PRIMARY KEY(id),
FOREIGN KEY(Partida_id) REFERENCES Partida(id)
);

CREATE TABLE Kills (
id BIGINT NOT NULL AUTO_INCREMENT,
Partida_id BIGINT,
Times VARCHAR(10),
Tempo TIME,
Vítima VARCHAR(30),
Assasino VARCHAR(30),
Assistencia_1 VARCHAR(30),
Assistencia_2 VARCHAR(30),
Assistencia_3 VARCHAR(30),
Assistencia_4 VARCHAR(30),
PRIMARY KEY(id),
FOREIGN KEY(Partida_id) REFERENCES Partida(id)
);

CREATE TABLE Dragão (
id BIGINT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(25),
PRIMARY KEY(id)
);

CREATE TABLE Monstros (
id BIGINT NOT NULL AUTO_INCREMENT,
Partida_id BIGINT,
Times VARCHAR(10),
Tempo TIME,
Monstro VARCHAR(20),
Dragão_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(Partida_id) REFERENCES Partida(id),
FOREIGN KEY(Dragão_id) REFERENCES Dragão(id)
);

INSERT INTO Partida (Nome)
VALUES ("LOUD x paiN Gaming"),
("Liberty x KaBuM! Esports");

INSERT INTO Informações_da_partida(liga, Data, Partida_id, Time_azul_tag, Time_azul_resultado, Time_Vermelho_resultado,
Time_vermelho_tag, Duração_da_partida, Topo_azul, Campeão_topo_azul, Caçador_azul, Campeão_caçador_azul, Meio_azul,
Campeão_meio_azul, Atirador_azul, Campeão_atirador_azul, Suporte_azul, Campeão_suporte_azul, Topo_vermelho,
Campeão_topo_vermelho, Caçador_vermelho, Campeão_caçador_vermelho, Meio_vermelho, Campeão_meio_vermelho, 
Atirador_vermelho, Campeão_atirador_vermelho, Suporte_vermelho, Campeão_suporte_vermelho)

VALUES("CBLOL",'2023-01-23', 1,"LLL","Vitória","Derrota","PNG",'24:00',"Robo","Olaf","Croc","Wukong","Tinowns","Syndra","Route",
"Lucian","Ceos","Nami","Wizer","Gnar","Cariok","VI","Dynquedo","Galio","Bvoy","Zeri","Damage","Yuumi"),

("CBLOL",'2023-01-23', 2,"LBR","Vitória","Derrota","KBM",'41:13',"Kiari","Kennen","accez","VI","Piloto","Ryze","Juliera",
"Kalista","Cavalo","Ashe","Lonely","Jax","SCARY","Sejuane","YURI","Azir","DudsTheBoy","Varus","scuro","Heimerdinger")
;

INSERT INTO Estruturas (Partida_id,Times,Tempo,Rota,Tipo)
VALUES(1,"Azul",'14:41',"Meio","Torre Externa 1"),
(1,"Azul",'16:04',"Superior","Torre Externa 1"),
(1,"Azul",'16:04',"Inferior","Torre Externa 1"),
(1,"Azul",'17:56',"Meio","Torre Externa 2"),
(1,"Azul",'18:04',"Meio","Torre Externa 3"),
(1,"Azul",'23:42',"Meio","Inibidor"),
(1,"Azul",'23:50',"Meio","Torre do nexus"),
(1,"Azul",'23:53',"Meio","Torre do nexus"),
(1,"Azul",'23:57',"Meio","Nexus"),

(2,"Vermelho",'17:26',"Superior","Torre Externa 1"),
(2,"Vermelho",'17:53',"Meio","Torre Externa 1"),
(2,"Azul",'20:52',"Inferior","Torre Externa 1"),
(2,"Vermelho",'23:06',"Meio","Torre Externa 2"),
(2,"Vermelho",'32:11',"Inferior","Torre Externa 2"),
(2,"Azul",'32:16',"Superior","Torre Externa 1"),
(2,"Vermelho",'38:49',"Superior","Torre Externa 2"),
(2,"Vermelho",'39:31',"Meio","Torre Externa 3"),
(2,"Vermelho",'39:37',"Meio","Inibidor"),
(2,"Vermelho",'40:04',"Superior","Torre Externa 3"),
(2,"Azul",'40:37',"Inferior","Torre Externa 2"),
(2,"Azul",'40:52',"Inferior","Torre Externa 3"),
(2,"Azul",'41:00',"Inferior","Inibidor"),
(2,"Azul",'41:06',"Inferior","Torre do Nexus"),
(2,"Azul",'41:09',"Inferior","Torre do Nexus"),
(2,"Azul",'41:13',"Inferior","Nexus")
;

INSERT INTO Banimentos(Partida_id,Times,Ban_1,Ban_2,Ban_3,Ban_4,Ban_5)
VALUES(1,"Azul","Jayce","Jax","Sejuane","Akali","Azir"),
(1,"Vermelho","Caitlyn","Ryze","Maokai","Kassadin","Sylas"),

(2,"Azul","Maokay","Yuumi","Syndra","Karma","Kassadin"),
(2,"Vermelho","Gnar","Jhin","Nami","Jayce","Caitlyn")
;

INSERT INTO Kills(Partida_id,Times,Tempo,Vítima,Assasino,Assistencia_1,Assistencia_2,Assistencia_3,Assistencia_4)
VALUES(1,"Azul",'03:14',"Cariok","Croc",null,null,null,null),
(1,"Azul",'03:41',"Wizer","Croc","Tinowns","Robo",null,null),
(1,"Azul",'06:53',"Cariok","Robo","Croc","Tinowns",null,null),
(1,"Vermelho",'06:56',"Croc","dyNquedo","Cariok","Wizer",null,null),
(1,"Vermelho",'09:19',"Robo","Wizer","Cariok","dyNquedo","Damage",null),
(1,"Azul",'11:55',"Cariok","tinowns","Croc","Route","Ceos",null),
(1,"Azul",'12:07',"Wizer","Robo","Croc","tinowns","Route","Ceos"),
(1,"Vermelho",'12:08',"Route","Bvoy","Wizer","dyNquero","Damage",null),
(1,"Vermelho",'12:14',"Robo","dyNquedo","Wizer","Bvoy","Damage",null),
(1,"Azul",'12:14',"Bvoy","tinows","Robo","Route","Ceos",null),
(1,"Azul",'12:20',"dyNquedo","tinowns","Robo","Ceos",null,null),
(1,"Azul",'14:28',"Wizer","Robo",null,null,null,null),
(1,"Azul",'17:24',"Wizer","Robo","tinowns","Route","Ceos",null),
(1,"Azul",'17:26',"Cariok","Robo","tinowns","Route","Ceos",null),
(1,"Azul",'17:28',"dyNquedo","Robo","tinowns","Route","Ceos","Croc"),
(1,"Azul",'17:34',"Bvoy","Croc","Route","Ceos","tinowns",null),
(1,"Azul",'17:36',"Damage","Ceos","Route","Croc","tinowns",null),
(1,"Azul",'23:22',"Cariok","tinowns","Route","Ceos","Croc",null),
(1,"Azul",'23:22',"Wizer","tinowns","Route","Ceos","Croc",null),
(1,"Azul",'23:24',"Bvoy","Route","Tinowns","Ceos","Croc",null),
(1,"Azul",'23:26',"dyNquedo","tinowns","Robo","Route","Ceos","Croc"),
(1,"Azul",'23:27',"Damage","Ceos","Route","Croc","tinowns",null),

(2,"Azul",'03:10',"DudsTheBoy","juliera","Cavalo","Piloto","accez",null),
(2,"Vermelho",'11:15',"accez","Lonely","Yuri","SCARY",null,null),
(2,"Vermelho",'14:03',"accez","SCARY","Lonely",null,null,null),
(2,"Vermelho",'16:35',"juliera","SCARY","DudsTheBoy","scuro",null,null),
(2,"Vermelho",'16:52',"Cavalo","SCARY","DudsTheBoy","scuro",null,null),
(2,"Azul",'16:55',"DudsTheBoy","Piloto","Cavalo","accez",null,null),
(2,"Vermelho",'17:00',"accez","YURI","SCARY","scuro",null,null),
(2,"Azul",'18:38',"YURI","accez","Cavalo","Piloto","julieira","Kiari"),
(2,"Vermelho",'18:41',"Cavalo","Lonely","DudsTheBoy","scuro","SCARY",null),
(2,"Azul",'18:38',"YURI","julieira","Cavalo","Piloto","accez","Kiari"),
(2,"Vermelho",'18:46',"Piloto","Lonely","DudsTheBoy","scuro","SCARY",null),
(2,"Azul",'18:51',"Lonely","kiari","Cavalo","Piloto","accez","julieira"),
(2,"Vermelho",'18:51',"accez","DudsTheBoy","Lonely","scuro","SCARY",null),
(2,"Azul",'18:38',"YURI","accez","Cavalo","Piloto",null,null),
(2,"Vermelho",'21:12',"KIARI","Lonely","SCARY",null,null,null),
(2,"Vermelho",'21:39',"Cavalo","DudsTheBoy","Lonely","scuro","SCARY",null),
(2,"Vermelho",'21:47',"accez","DudsTheBoy","Lonely","scuro","SCARY","YURI"),
(2,"Vermelho",'21:47',"Piloto","YURI","DudsTheBoy","Lonely","scuro","SCARY"),
(2,"Azul",'22:56',"Lonely","julieira","kiari","Cavalo",null,null),
(2,"Azul",'23:32',"YURI","julieira",null,null,null,null),
(2,"Azul",'23:37',"DudsTheBoy","julieira","Piloto","Cavalo","accez","Kiari"),
(2,"Azul",'23:45',"scuro","Piloto","Cavalo","accez",null,null),
(2,"Vermelho",'25:57',"KIARI","DudsTheBoy","Lonely","SCARY","scuro",null),
(2,"Azul",'26:00',"YURI","Cavalo","julieira","Kiari","Piloto",null),
(2,"Vermelho",'30:41',"julieira","SCARY","Lonely","DudsTheBoy",null,null),
(2,"Vermelho",'30:41',"Kiari","YURI","scuro","DudsTheBoy",null,null),
(2,"Vermelho",'30:57',"Piloto","Lonely","SCARY","scuro","YURI",null),
(2,"Azul",'31:56',"YURI","accez","Cavalo","Kiari",null,null),
(2,"Azul",'33:15',"DudsTheBoy","Piloto","Cavalo",null,null,null),
(2,"Vermelho",'33:19',"Piloto","Cavalo",null,null,null,null),
(2,"Azul",'36:20',"SCARY","julieira","accez","Piloto","Cavalo",null),
(2,"Vermelho",'36:20',"julieira","YURI","SCARY","DudsTheBoy","scuro",null),
(2,"Vermelho",'36:21',"KIARI","Lonely","SCARY","scuro",null,null),
(2,"Azul",'36:21',"YURI","Cavalo","accez","Piloto","julieira",null),
(2,"Vermelho",'37:12',"accez","DudsTheBoy","Lonely","scuro",null,null),
(2,"Azul",'40:05',"DudsTheBoy","accez","Piloto","Cavalo","Kiari",null),
(2,"Azul",'40:11',"YURI","julieira","Kiari","Piloto","Cavalo","accez"),
(2,"Azul",'40:13',"Lonely","julieira","Kiari","Piloto","Cavalo","accez"),
(2,"Azul",'40:17',"Lonely","julieira","Cavalo",null,null,null),
(2,"Azul",'40:20',"SCARY","julieira","Kiari","Piloto","Cavalo",null)
;

INSERT INTO Dragão(Nome)
VALUES("Dragão Infernal"),
("Dragão do Oceano"),
("Dragão da Monstanha"),
("Dragão das Nuvems"),
("Dragão Hextech"),
("Dragão Quimiotech")
;

INSERT INTO Monstros(Partida_id,Times,Tempo,Monstro,Dragão_id)
VALUES(1,"Azul",'05:58',"Dragão",1),
(1,"Azul",'08:35',"Arauto",null),
(1,"Azul",'11:58',"Dragão",5),
(1,"Azu",'15:03',"Arauto",null),
(1,"Azul",'18:17',"Dragão",6),

(2,"Azul",'05:43',"Dragão",5),
(2,"Azul",'20:29',"Dragão",2),
(2,"Vermelho",'12:58',"Dragão",3),
(2,"Vermelho",'22:11',"Barão",null),
(2,"Vermelho",'26:04',"Dragão",2),
(2,"Azul",'30:35',"Barão",null),
(2,"Azul",'37:04',"Dragão",2),
(2,"Vermelho",'37:48',"Barão",null)
;