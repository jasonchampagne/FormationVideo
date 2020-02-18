/*
----------------------------------------------------------------------------------------------------------------
-- FICHIER SQL POUR LA SÉANCE #18 (youtube.com/formationvideo8)
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
CREATE TABLE IF NOT EXISTS `fv_carbrands`
(
	`id_carbrand` INT NOT NULL AUTO_INCREMENT, 
	`carbrand_name` VARCHAR(30) NOT NULL UNIQUE, 
	`carbrand_country` CHAR(2) NOT NULL, 
	`carbrand_website` VARCHAR(255) NOT NULL UNIQUE, 
	PRIMARY KEY(`id_carbrand`)
);

CREATE TABLE IF NOT EXISTS `fv_countries`
(
	`id_country` INT NOT NULL AUTO_INCREMENT, 
	`country_code` CHAR(2) NOT NULL UNIQUE, 
	`country_name` VARCHAR(25) NOT NULL UNIQUE, 
	PRIMARY KEY(`id_country`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Ajout de quelques enregistrements ---------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_countries`(`country_code`, `country_name`)
VALUES
('FR', 'France'), 
('JP', 'Japon'), 
('DE', 'Allemagne'), 
('IT', 'Italie'), 
('KR', 'Corée');

INSERT INTO `fv_carbrands`(`carbrand_name`, `carbrand_country`, `carbrand_website`)
VALUES
('Mazda', 'JP', 'https://www.mazda.fr/'), 
('Peugeot', 'FR', 'https://www.peugeot.fr/accueil.html'), 
('Renault', 'FR', 'https://group.renault.com/'), 
('Audi', 'DE', 'https://www.audi.com/en.html'), 
('Toyota', 'JP', 'https://global.toyota/en/'), 
('Ferrari', 'IT', 'https://www.ferrari.com/fr-FR'), 
('Hyundai', 'KR', 'http://www.hyundaigroup.com/'), 
('Nissan', 'JP', 'https://www.nissan-global.com/EN/index.html'), 
('BMW', 'DE', 'https://www.bmwgroup.com/de.html'), 
('Lamborghini', 'IT', 'https://www.lamborghini.com/en-en/');