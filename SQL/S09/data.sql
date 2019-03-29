/*
----------------------------------------------------------------------------------------------------------------
-- FICHIER SQL POUR LA SÉANCE #9 (youtube.com/formationvideo8)
-- Jason CHAMPAGNE
----------------------------------------------------------------------------------------------------------------
-- Recréation de la base de données ----------------------------------------------------------------------------
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
CREATE TABLE IF NOT EXISTS `fv_users`
(
	`id_user` INT NOT NULL AUTO_INCREMENT, 
	`user_firstname` VARCHAR(65) NOT NULL, 
	`user_lastname` VARCHAR(65) NOT NULL, 
	`user_birthdate` DATE NOT NULL, 
	`user_tel` CHAR(10), 
	`user_purchases` INT(11) NOT NULL DEFAULT '0', 
	PRIMARY KEY(`id_user`)
);

CREATE TABLE IF NOT EXISTS `fv_products`
(
	`id_product` INT NOT NULL AUTO_INCREMENT, 
	`product_name` VARCHAR(100) NOT NULL, 
	`product_stock` INT NOT NULL DEFAULT '1', 
	`product_amount` FLOAT NOT NULL, 
	PRIMARY KEY(`id_product`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Ajout de quelques enregistrements ---------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_users` (`user_firstname`, `user_lastname`, `user_birthdate`, `user_tel`, `user_purchases`)
VALUES ('John Christopher', 'DEPP II', '1963-06-09', '0606060606', 4);
INSERT INTO `fv_users` (`user_firstname`, `user_lastname`, `user_birthdate`, `user_tel`)
VALUES ('Cyril', 'HANOUNA', '1974-09-23', '0611220044');
INSERT INTO `fv_users` (`user_firstname`, `user_lastname`, `user_birthdate`, `user_purchases`)
VALUES ('Adrien', 'NOUGARET', '1990-03-01', 12);
INSERT INTO `fv_users` (`user_firstname`, `user_lastname`, `user_birthdate`, `user_tel`, `user_purchases`)
VALUES ('Jaoued ', 'DAOUKI', '1987-08-18', '0612345678', 4);
INSERT INTO `fv_users` (`user_firstname`, `user_lastname`, `user_birthdate`, `user_tel`, `user_purchases`)
VALUES ('Kenny ', 'VANDERBECKEN', '1420-10-31', '0612345678', 666);

INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ('PC portable Gaming Nabilla', 15, 1399.99);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ('Kit de rituels TOS TES TAS', 6000, 9.95);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ('MyBigBurger - salade tomates oignons chef', 15, 17.40);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ('MyBigBurger - salade tomates oignons chef', 15, 17.40);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ("Livre - l'Univers comme tu ne l'as jamais cru", 42, 14.95);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ("Pain au chocolat OU Chocolatine", 1, 0.15);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ("Toilette portatif pour streamers", 200, 275.00);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ("Bidon d'essence (1L)", 1500, 0.15);
INSERT INTO `fv_products` (`product_name`, `product_stock`, `product_amount`)
VALUES ("Carte cadeau Steam", 400000, 25.00);