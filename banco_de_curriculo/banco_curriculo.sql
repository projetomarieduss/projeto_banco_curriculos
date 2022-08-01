CREATE DATABASE projeto;
USE projeto;


CREATE TABLE usuarios (
id int PRIMARY KEY AUTO_INCREMENT,
cpf varchar(14),
senha varchar(255),
nome varchar(255),
tipo int,
email varchar(255)
)
;

CREATE TABLE curriculo (
id_curr int  PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
nome varchar(255),
telefone varchar(14),
email varchar(255)
)
;

CREATE TABLE habilidades (
id_hab int PRIMARY KEY AUTO_INCREMENT,
habilidades varchar(255),
id_curr int ,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

CREATE TABLE competencias (
id_comp int PRIMARY KEY AUTO_INCREMENT,
competencias varchar(255),
id_curr int ,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

CREATE TABLE educacao (
id_edu int PRIMARY KEY AUTO_INCREMENT,
curso varchar(255),
fim date,
inicio date,
instituicao varchar(255),
id_curr int ,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

CREATE TABLE experiencia (
id_exp int PRIMARY KEY AUTO_INCREMENT,
empresa varchar(255),
fim date,
inicio date,
empresa varchar(255),
id_curr int ,
FOREIGN KEY(id_curr) REFERENCES curriculo (id_curr)
)
;

