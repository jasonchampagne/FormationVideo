/*
----------------------------------------------------------------------------------------------------------------
-- FICHIER SQL POUR LA SÉANCE #10 (youtube.com/formationvideo8)
-- Jason CHAMPAGNE
----------------------------------------------------------------------------------------------------------------
-- Re-création de la base de données ----------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
DROP TABLE IF EXISTS `fv_users`;
DROP TABLE IF EXISTS `fv_products`;
DROP DATABASE IF EXISTS `fv_database`;
CREATE DATABASE IF NOT EXISTS `fv_database`;
USE `fv_database`;

/*
----------------------------------------------------------------------------------------------------------------
-- Création des tables -----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
CREATE TABLE IF NOT EXISTS `fv_games`
(
	`id_game` INT NOT NULL AUTO_INCREMENT, 
	`game_title` VARCHAR(100) NOT NULL, 
	`game_releaseDate` DATE NOT NULL, 
	`game_price` FLOAT NOT NULL, 
	`game_stock` INT NOT NULL, 
	PRIMARY KEY(`id_game`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Ajout de quelques enregistrements ---------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_games`(`game_title`, `game_releaseDate`, `game_price`, `game_stock`)
VALUES
('Final Fantasy VII', '1997-11-17', 12.99, 7), 
('God of War : Ascension', '2013-03-13', 22.75, 1), 
('Gran Turismo 5', '2010-11-24', 25.00, 1), 
('Tekken', '1995-11-03', 59.90, 1), 
('Euro Truck Simulator 2', '2012-10-19', 8.99, 5), 
('Professeur Layton et l''Héritage des Aslantes', '2013-11-08', 74.99, 3), 
('Pokémon Let''s Go, Pikachu', '2018-11-16', 44.39, 2), 
('Pokémon Let''s Go, Évoli', '2018-11-16', 44.39, 2), 
('Sea of Thieves', '2018-03-20', 34.99, 10), 
('Fortnite Battle Royale', '2017-09-28', 0.0, 7), 
('World of Warcraft', '2005-02-11', 14.51, 15), 
('Tekken 3', '1998-09-12', 89.90, 1), 
('Rocket League', '2015-07-07', 21.99, 6), 
('The Legend of Zelda : Ocarina of Time', '1998-12-11', 14.90, 4), 
('Minecraft', '2011-11-18', 18.48, 2), 
('Life is Strange - épisode 1', '2015-01-30', 0.0, 1), 
('Devil May Cry 2', '2003-04-03', 57.00, 3), 
('Skylanders : Spyro''s Adventure', '2011-10-14', 19.95, 4), 
('Forza Horizon 4', '2018-10-02', 35.99, 4), 
('Grand Theft Auto : San Andreas', '2004-10-29', 6.58, 1);