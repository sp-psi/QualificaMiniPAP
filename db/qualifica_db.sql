-- DROP DATABASE IF EXISTS qualifica_db;
-- CREATE DATABASE qualifica_db;
USE qualifica_db;

CREATE TABLE concelho (
	id INT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE participante (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telemovel VARCHAR(15) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    concelho_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (concelho_id) REFERENCES concelho (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

START TRANSACTION;
INSERT INTO `concelho` (`nome`) VALUES
('Porto'),
('Amarante'),
('Baião'),
('Felgueiras'),
('Gondoma'),
('Lousada'),
('Maia'),
('Marco de Canaveses'),
('Matosinhos'),
('Paços de Ferreira'),
('Paredes'),
('Penafiel'),
('Póvoa de Varzim'),
('Santo Tirso'),
('Valongo'),
('Vila do Conde'),
('Vila Nova de Gaia'),
('Trofa'),
('Outro');
COMMIT;
