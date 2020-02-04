/*
----------------------------------------------------------------------------------------------------------------
-- FICHIER SQL POUR LA SÉANCE #16 (youtube.com/formationvideo8)
-- Jason CHAMPAGNE
----------------------------------------------------------------------------------------------------------------
-- Re-création de la base de données ----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
DROP DATABASE IF EXISTS `fv_database`;
CREATE DATABASE IF NOT EXISTS `fv_database`;
USE `fv_database`;

/*
----------------------------------------------------------------------------------------------------------------
-- Création des tables -----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
CREATE TABLE IF NOT EXISTS `fv_players`
(
	`id_player` INT NOT NULL AUTO_INCREMENT, 
	`player_name` VARCHAR(65) NOT NULL, 
	`player_level` INT NOT NULL, 
	`player_class` VARCHAR(30) NOT NULL, 
	PRIMARY KEY(`id_player`), 
	UNIQUE(`player_name`)
);

CREATE TABLE IF NOT EXISTS `fv_playertrades`
(
	`id_playertrade` INT NOT NULL AUTO_INCREMENT, 
	`playertrade_seller` VARCHAR(65) NOT NULL, 
	`playertrade_buyer` VARCHAR(65) NOT NULL, 
	`playertrade_item` VARCHAR(65) NOT NULL, 
	`playertrade_date` DATETIME NOT NULL, 
	PRIMARY KEY(`id_playertrade`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Ajout de quelques enregistrements ---------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_players`(`player_name`, `player_level`, `player_class`)
VALUES
('BigBoss_89', 15, 'Guerrier'), 
('Sephiroth', 37, 'Mage noir'), 
('Nephion', 23, 'Barde'), 
('Cladjuju', 1, 'Archer'), 
('Haryko', 1, 'Voleur'), 
('Greg_war', 16, 'Mage noir'),  
('Icekissy', 50, 'Mage blanc');

INSERT INTO `fv_playertrades`(`playertrade_seller`, `playertrade_buyer`, `playertrade_item`, `playertrade_date`)
VALUES
('Sephiroth', 'BigBoss_89', 'Épée en mousse', '2020-01-17 14:37:23'), 
('Icekissy', 'Greg_war', 'Anneau rouillé', '2020-01-17 15:10:01'), 
('Greg_war', 'BigBoss_89', 'Cape de héros Niv. 13', '2020-01-17 18:43:18'), 
('Haryko', 'Cladjuju', 'Arc en bois', '2020-01-18 02:08:17'), 
('BigBoss_89', 'Sephiroth', 'Épée en mousse', '2020-01-19 00:00:36'), 
('BigBoss_89', 'Sephiroth', 'Grimoire de sorts Niv. 30', '2020-01-19 00:15:43'), 
('Sephiroth', 'Icekissy', 'Sacoche 20 emplacements', '2020-01-20 09:24:54'), 
('Icekissy', 'Haryko', 'Extrait de rubis', '2020-01-23 12:28:00'), 
('Icekissy', 'Sephiroth', 'Sceptre des anciens Niv. 40', '2020-01-24 10:10:10'), 
('Greg_war', 'Haryko', 'Potion de furtivité', '2020-01-24 10:10:26'), 
('Greg_war', 'Haryko', 'Mitaines en cuir Niv. 4', '2020-01-26 19:44:27'), 
('Sephiroth', 'Icekissy', 'Enclos à bétail', '2020-01-27 21:33:03');