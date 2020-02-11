/*
----------------------------------------------------------------------------------------------------------------
-- FICHIER SQL POUR LA SÉANCE #17 (youtube.com/formationvideo8)
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
	`player_name` VARCHAR(65) NOT NULL UNIQUE, 
	`player_level` INT NOT NULL, 
	`player_ability` INT NOT NULL, 
	PRIMARY KEY(`id_player`)
);

CREATE TABLE IF NOT EXISTS `fv_abilities`
(
	`id_ability` INT NOT NULL AUTO_INCREMENT, 
	`ability_name` VARCHAR(30) NOT NULL UNIQUE, 
	PRIMARY KEY(`id_ability`)
);

CREATE TABLE IF NOT EXISTS `fv_playertrades`
(
	`id_playertrade` INT NOT NULL AUTO_INCREMENT, 
	`playertrade_seller` INT NOT NULL, 
	`playertrade_buyer` INT NOT NULL, 
	`playertrade_item` INT NOT NULL, 
	`playertrade_date` DATETIME NOT NULL, 
	PRIMARY KEY(`id_playertrade`)
);

CREATE TABLE IF NOT EXISTS `fv_items`
(
	`id_item` INT NOT NULL AUTO_INCREMENT, 
	`item_name` VARCHAR(65) NOT NULL UNIQUE, 
	`item_type` VARCHAR(65) NOT NULL, 
	`item_sellprice` INT NOT NULL, 
	PRIMARY KEY(`id_item`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Ajout de quelques enregistrements ---------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_players`(`player_name`, `player_level`, `player_ability`)
VALUES
('BigBoss_89', 15, 1), 
('Sephiroth', 37, 5), 
('Nephion', 23, 6), 
('Cladjuju', 1, 2), 
('Haryko', 1, 3), 
('Greg_war', 16, 5),  
('Icekissy', 50, 4);

INSERT INTO `fv_abilities`(`ability_name`)
VALUES
('Guerrier'), 
('Archer'), 
('Voleur'), 
('Mage blanc'), 
('Mage noir'), 
('Barde'), 
('Démoniste'), 
('Ingénieur');

INSERT INTO `fv_items`(`item_name`, `item_type`, `item_sellprice`)
VALUES
('Épée en mousse', 'arme', 2), 
('Potion de furtivité', 'consommable', 4), 
('Extrait de rubis', 'matériau', 25), 
('Arc en bois', 'arme', 5), 
('Arc en fer', 'arme', 8), 
('Arc en argent', 'arme', 15), 
('Cape de héros Niv. 13', 'armure', 23), 
('Pierre bruite', 'matériau', 1)
('Grimoire de sorts Niv. 30', 'magie', 30), 
('Enclos à bétail', 'élevage', 14), 
('Sacoche 20 emplacements', 'stockage', 8), 
('Anneau rouillé', 'accessoire', 10), 
('Sceptre des anciens Niv. 40', 'arme', 41), 
('Mitaines en cuir Niv. 4', 'armure', 4);

INSERT INTO `fv_playertrades`(`playertrade_seller`, `playertrade_buyer`, `playertrade_item`, `playertrade_date`)
VALUES
(2, 1, 1, '2020-01-17 14:37:23'), 
(7, 6, 9, '2020-01-17 15:10:01'), 
(6, 1, 5, '2020-01-17 18:43:18'), 
(5, 4, 4, '2020-01-18 02:08:17'), 
(1, 2, 1, '2020-01-19 00:00:36'), 
(1, 2, 6, '2020-01-19 00:15:43'), 
(2, 7, 8, '2020-01-20 09:24:54'), 
(7, 5, 3, '2020-01-23 12:28:00'), 
(7, 2, 10, '2020-01-24 10:10:10'), 
(6, 5, 2, '2020-01-24 10:10:26'), 
(6, 5, 11, '2020-01-26 19:44:27'), 
(2, 7, 7, '2020-01-27 21:33:03');
