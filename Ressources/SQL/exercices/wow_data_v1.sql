-- ///////////////////////////////////////////////////////////////////////////////
-- DÉBUT DE LA TRANSACTION
-- ///////////////////////////////////////////////////////////////////////////////
START TRANSACTION;


-- ///////////////////////////////////////////////////////////////////////////////
-- Base de données
-- ///////////////////////////////////////////////////////////////////////////////
DROP DATABASE IF EXISTS `wow_exo`;
CREATE DATABASE `wow_exo`;
USE `wow_exo`;


-- ///////////////////////////////////////////////////////////////////////////////
-- Tables
-- ///////////////////////////////////////////////////////////////////////////////
CREATE TABLE `zones`
(
    `zone_id` INT NOT NULL,
    `zone_name` VARCHAR(16) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `types`
(
    `type_id` INT NOT NULL,
    `type_name` VARCHAR(16) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `populations`
(
    `population_id` INT NOT NULL,
    `population_name` VARCHAR(16) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `realms`
(
    `realm_id` INT NOT NULL,
    `realm_name` VARCHAR(24) NOT NULL COLLATE utf8mb4_unicode_ci,
    `realm_online` BOOLEAN DEFAULT '0',
    `realm_zone_fkid` INT NOT NULL,
    `realm_type_fkid` INT NOT NULL,
    `realm_population_fkid` INT NOT NULL
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `races`
(
    `race_id` INT NOT NULL,
    `race_name` VARCHAR(24) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `classes`
(
    `class_id` INT NOT NULL,
    `class_name` VARCHAR(24) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `factions`
(
    `faction_id` INT NOT NULL,
    `faction_name` VARCHAR(16) NOT NULL COLLATE utf8mb4_unicode_ci
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `guilds`
(
    `guild_id` INT NOT NULL,
    `guild_name` VARCHAR(24) NOT NULL COLLATE utf8mb4_unicode_ci,
    `guild_leader_fkid` INT NOT NULL
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `characters`
(
    `character_id` INT NOT NULL,
    `character_name` VARCHAR(12) NOT NULL COLLATE utf8mb4_unicode_ci,
    `character_level` INT DEFAULT '1',
    `character_race_fkid` INT NOT NULL,
    `character_class_fkid` INT NOT NULL,
    `character_faction_fkid` INT DEFAULT NULL,
    `character_realm_fkid` INT NOT NULL,
    `character_guild_fkid` INT DEFAULT NULL
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `items`
(
    `item_id` INT NOT NULL,
    `item_name` VARCHAR(48) NOT NULL COLLATE utf8mb4_unicode_ci,
    `item_sellable` BOOLEAN DEFAULT NULL,
    `item_tradeable` BOOLEAN DEFAULT NULL,
    `item_vendor_price` INT DEFAULT NULL,
    `item_required_level` INT DEFAULT NULL,
    `item_required_class_fkid` INT DEFAULT NULL
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;

CREATE TABLE `inventories`
(
    `inventory_character_fkid` INT NOT NULL,
    `inventory_item_fkid` INT NOT NULL,
    `inventory_quantity` INT NOT NULL
)
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
ENGINE = InnoDB;


-- ///////////////////////////////////////////////////////////////////////////////
-- Enregistrements
-- ///////////////////////////////////////////////////////////////////////////////
INSERT INTO `zones` (`zone_id`, `zone_name`) VALUES
(4, 'Allemand'),
(2, 'Anglais'),
(3, 'Espagnol'),
(1, 'Europe'),
(6, 'Italien'),
(5, 'Russe');

INSERT INTO `types`(`type_id`, `type_name`) VALUES
(1, 'Normal'),
(2, 'JcJ'),
(3, 'JdR N');

INSERT INTO `populations`(`population_id`, `population_name`) VALUES
(1, 'Recommandé'),
(2, 'Faible'),
(3, 'Moyenne'),
(4, 'Élevée'),
(5, 'Complet');

INSERT INTO `realms` (`realm_id`, `realm_name`, `realm_online`, `realm_zone_fkid`, `realm_type_fkid`, `realm_population_fkid`) VALUES
(1, 'Hyjal', 1, 1, 1, 5),
(2, 'Khaz Modan', 1, 1, 1, 1),
(3, 'Illidan', 1, 1, 1, 2),
(4, 'Ragnaros', 1, 2, 1, 5),
(5, 'Moonglade', 1, 2, 3, 2),
(6, 'Archimonde', 1, 1, 1, 4),
(7, 'Elune', 1, 1, 1, 3),
(8, 'Antonidas', 1, 4, 1, 5),
(9, 'Der Mithrilorden', 1, 4, 3, 4),
(10, 'Dun Morogh', 1, 4, 1, 1),
(11, 'Nemesis', 1, 6, 1, 4),
(12, 'Pozzo dell''Eternità', 1, 6, 1, 1),
(13, 'Tyrande', 1, 3, 1, 3),
(14, 'Uldum', 1, 3, 1, 5),
(15, 'Zul''jin', 1, 3, 1, 5),
(16, 'Dalaran', 1, 1, 1, 4),
(17, 'Les Clairvoyants', 1, 1, 3, 4),
(18, 'Die Aldor', 1, 4, 3, 3),
(19, 'Ysondre', 1, 1, 1, 4),
(20, 'Draenor', 1, 2, 1, 5),
(21, 'Neptulon', 1, 2, 1, 2),
(22, 'Illidan', 0, 2, 1, 4),
(23, 'Exodar', 1, 3, 1, 1),
(24, 'Vol''jin', 1, 1, 1, 2),
(25, 'Kirin Tor', 1, 1, 3, 4),
(26, 'Suramar', 1, 1, 1, 2);

INSERT INTO `races`(`race_id`, `race_name`) VALUES
(1, 'Humain'),
(2, 'Kultirassien'),
(3, 'Nain'),
(4, 'Nain sombrefer'),
(5, 'Elfe de la nuit'),
(6, 'Elfe du Vide'),
(7, 'Gnome'),
(8, 'Mécagnome'),
(9, 'Draeneï'),
(10, 'Draeneï sancteforge'),
(11, 'Worgen'),
(12, 'Pandaren'),
(13, 'Dracthyr'),
(14, 'Orc'),
(15, 'Orc mag''har'),
(16, 'Mort-vivant'),
(17, 'Tauren'),
(18, 'Tauren de Haut-Roc'),
(19, 'Troll'),
(20, 'Troll zandalari'),
(21, 'Elfe de sang'),
(22, 'Sacrenuit'),
(23, 'Gobelin'),
(24, 'Vulpérin');

INSERT INTO `classes`(`class_id`, `class_name`) VALUES
(1, 'Guerrier'),
(2, 'Paladin'),
(3, 'Chasseur'),
(4, 'Voleur'),
(5, 'Prêtre'),
(6, 'Chaman'),
(7, 'Mage'),
(8, 'Démoniste'),
(9, 'Moine'),
(10, 'Druide'),
(11, 'Chasseur de démons'),
(12, 'Chevalier de la mort'),
(13, 'Évocateur');

INSERT INTO `factions`(`faction_id`, `faction_name`) VALUES
(1, 'Alliance'),
(2, 'Horde');

INSERT INTO `guilds`(`guild_id`, `guild_name`, `guild_leader_fkid`) VALUES
(1, 'Kaamelott', 1),
(2, 'I scream so good', 3),
(3, 'Casseurs Flotteurs', 16),
(4, 'TooSoonToDie', 17),
(5, 'GOOD VIBES', 18),
(6, 'Chez Mamie', 22),
(7, 'Gardiens d''Azeroth', 24),
(8, 'cazas del caos', 25),
(9, 'Die Blutgruppe', 43);

INSERT INTO `characters`(`character_id`, `character_name`, `character_level`, `character_race_fkid`, `character_class_fkid`, `character_faction_fkid`, `character_realm_fkid`, `character_guild_fkid`) VALUES
(1, 'Arthur', 70, 1, 1, 1, 19, 1),
(2, 'Tontino', 70, 12, 7, 2, 13, 8),
(3, 'Lapoulette', 70, 5, 10, 1, 25, 2),
(4, 'Bigboss', 67, 16, 8, 2, 25, 2),
(5, 'Kadoc', 70, 1, 1, 1, 19, 1),
(6, 'Blizzy', 10, 8, 5, 1, 11, NULL),
(7, 'Leno', 70, 4, 12, 1, 11, NULL),
(8, 'Aménillia', 6, 13, 13, NULL, 7, 7),
(9, 'Kazzalak', 70, 23, 4, 2, 13, 8),
(10, 'MarcoPoblo', 70, 7, 7, 1, 13, 8),
(11, 'Aévénia', 70, 22, 7, 1, 2, NULL),
(12, 'Kaos', 70, 5, 5, 1, 25, 2),
(13, 'Moussline', 8, 3, 3, 1, 2, NULL),
(14, 'Caradoc', 70, 1, 1, 1, 19, 1),
(15, 'Perceval', 70, 1, 1, 1, 19, 1),
(16, 'Shoubelle', 4, 12, 9, NULL, 16, 3),
(17, 'Cruolle', 70, 14, 5, 2, 21, 4),
(18, 'Marcelino', 64, 15, 1, 2, 20, 5),
(19, 'Kaninchen', 70, 14, 3, 2, 18, 9),
(20, 'Pinguin', 70, 11, 12, 1, 18, 9),
(21, 'Bär', 70, 10, 2, 1, 18, 9),
(22, 'Shôukette', 63, 7, 12, 1, 24, 6),
(23, 'Mauron', 70, 12, 1, 1, 13, 8),
(24, 'Kratoss', 70, 5, 11, 1, 7, 7),
(25, 'Shadi', 68, 11, 1, 1, 13, 8),
(26, 'Fooler', 70, 21, 11, 2, 16, 3),
(27, 'Harry', 70, 6, 7, 1, 16, 3),
(28, 'Santänna', 70, 6, 4, 1, 16, 2),
(29, 'Nillo', 53, 14, 1, 2, 24, 6),
(30, 'Merlinus', 53, 16, 1, 2, 25, 2),
(31, 'Merlin', 70, 1, 10, 1, 19, 1),
(32, 'Mistermp', 47, 17, 6, 2, 8, NULL),
(33, 'Daniolozz', 25, 5, 5, 1, 12, NULL),
(34, 'Marvin', 24, 17, 6, 2, 16, 3),
(35, 'Anissa', 70, 6, 3, 1, 20, 5),
(36, 'Izzina', 70, 2, 3, 1, 20, 5),
(37, 'Untoro', 42, 12, 1, 1, 21, 4),
(38, 'Zackiel', 70, 19, 3, 2, 21, 4),
(39, 'Po', 70, 24, 4, 2, 26, NULL),
(40, 'Jeanmi', 16, 6, 7, 1, 7, 7),
(41, 'Kévin', 23, 21, 2, 2, 16, 3),
(42, 'Yvain', 70, 1, 1, 1, 19, 1),
(43, 'Ichpo', 58, 18, 1, 2, 18, 9),
(44, 'Padavi', 1, 9, 5, 1, 7, 7),
(45, 'Elnaë', 70, 2, 8, 1, 7, 7),
(46, 'Oldië', 69, 13, 13, 1, 12, NULL),
(47, 'Galdarion', 1, 13, 13, NULL, 24, 6),
(48, 'Zator', 70, 13, 13, 2, 8, NULL),
(49, 'Grekfar', 70, 13, 13, 2, 26, NULL),
(50, 'Shamanheal', 70, 21, 7, 2, 26, NULL);

INSERT INTO `items`(`item_id`, `item_name`, `item_sellable`, `item_tradeable`, `item_vendor_price`, `item_required_level`, `item_required_class_fkid`) VALUES
(1, 'Sac en lin', 1, 1, 200, 2, NULL),
(2, 'Bâton de la flèche de Cerith', 1, NULL, 841, 37, NULL),
(3, 'Guide pratique de Sombrelune', NULL, NULL, NULL, 1, NULL),
(4, 'Robe de sagebraise bienveillante', 1, NULL, 881312, 441, 10),
(5, 'Paléo-steak bien épais', 1, 1, 625, 45, NULL),
(6, 'Recette : Transmutation d''arcanite', 1, 1, 5000, 1, NULL),
(7, 'Bourse en soie enténébrée', 1, 1, 15387, 60, NULL),
(8, 'Rênes d''Invincible', NULL, NULL, NULL, 30, NULL),
(9, 'Proto-drake renouvelé', 1, NULL, 1, 70, NULL),
(10, 'Banane de Tel''Abim', 1, 1, 6, 3, NULL),
(11, 'Arc long de forestier des cendres', 1, NULL, 1562475, 441, NULL),
(12, 'Pilier illuminé des îles', 1, NULL, 1535393, 382, NULL),
(13, 'Peau légère', 1, 1, 50, 10, NULL),
(14, 'Secret de Sephuz', 1, NULL, 295743, 163, NULL),
(15, 'Recette : potion de soins de Marcherêve', 1, 1, 500000, 1, NULL),
(16, 'Tartare d''ours', 1, 1, 1250, 45, NULL),
(17, 'Aile-du-Vide non corrompue', NULL, NULL, NULL, 30, NULL),
(18, 'Rênes de yack de la grande expédition', 1, NULL, 300000000, 10, NULL),
(19, 'Eau de source', 1, NULL, NULL, 1, NULL),
(20, 'Écu onirique de wyrm jeune', 1, NULL, 50000, 1, NULL),
(21, 'Graine onirique gigantesque', NULL, NULL, NULL, 1, NULL),
(22, 'Graine onirique ronde', NULL, NULL, NULL, 1, NULL),
(23, 'Fyr''alath le Pourfendeur de rêve', 1, NULL, 2465089, 496, NULL);

INSERT INTO `inventories`(`inventory_character_fkid`, `inventory_item_fkid`, `inventory_quantity`) VALUES
(2, 1, 1),
(6, 1, 1),
(10, 1, 1),
(12, 1, 1),
(16, 1, 1),
(20, 1, 1),
(22, 1, 1),
(26, 1, 1),
(30, 1, 1),
(32, 1, 1),
(36, 1, 1),
(40, 1, 1),
(42, 1, 1),
(46, 1, 1),
(50, 1, 1),
(18, 2, 1),
(27, 3, 1),
(11, 3, 1),
(41, 3, 1),
(37, 3, 1),
(31, 3, 1),
(47, 3, 1),
(7, 3, 1),
(21, 3, 1),
(2, 3, 1),
(17, 3, 1),
(25, 4, 1),
(23, 4, 2),
(1, 5, 1),
(29, 5, 3),
(9, 5, 9),
(11, 5, 2),
(21, 5, 20),
(19, 5, 33),
(49, 5, 3),
(41, 5, 20),
(39, 5, 6),
(31, 5, 2),
(3, 6, 1),
(8, 6, 1),
(1, 7, 5),
(6, 7, 3),
(10, 7, 2),
(16, 7, 3),
(26, 7, 3),
(20, 7, 20),
(21, 7, 1),
(11, 7, 1),
(50, 7, 2),
(41, 7, 6),
(40, 7, 2),
(30, 7, 2),
(36, 7, 3),
(31, 7, 7),
(46, 7, 3),
(12, 8, 1),
(1, 9, 1),
(7, 9, 1),
(17, 9, 1),
(47, 9, 1),
(37, 9, 1),
(27, 9, 1),
(4, 10, 1),
(18, 10, 10),
(24, 10, 34),
(28, 10, 23),
(48, 10, 10),
(2, 11, 1),
(24, 13, 15),
(41, 13, 4),
(44, 13, 23),
(31, 13, 20),
(37, 13, 1),
(34, 13, 3),
(2, 15, 1),
(8, 15, 1),
(5, 15, 1),
(22, 15, 1),
(4, 16, 2),
(9, 16, 9),
(17, 16, 10),
(49, 16, 2),
(37, 16, 6),
(34, 16, 16),
(24, 16, 13),
(29, 16, 2),
(39, 16, 25),
(47, 16, 1),
(44, 16, 40),
(43, 17, 1),
(16, 18, 1),
(4, 19, 3),
(10, 19, 1),
(8, 19, 2),
(12, 19, 14),
(14, 19, 3),
(18, 19, 2),
(34, 19, 3),
(30, 19, 1),
(42, 19, 2),
(38, 19, 20),
(40, 19, 1),
(1, 20, 23),
(9, 20, 7),
(47, 20, 6),
(29, 20, 7),
(27, 20, 16),
(41, 20, 15),
(37, 20, 6),
(31, 20, 2),
(39, 20, 30),
(7, 20, 1),
(11, 20, 4),
(17, 20, 3),
(19, 20, 6),
(5, 21, 2),
(15, 21, 1),
(25, 21, 7),
(35, 21, 4),
(45, 21, 4),
(15, 22, 12),
(8, 22, 5),
(13, 22, 9),
(46, 22, 3),
(30, 22, 11),
(1, 23, 1);

-- ///////////////////////////////////////////////////////////////////////////////
-- Index
-- ///////////////////////////////////////////////////////////////////////////////
ALTER TABLE `zones`
ADD PRIMARY KEY(`zone_id`),
ADD UNIQUE KEY `zone_name`(`zone_name`);

ALTER TABLE `types`
ADD PRIMARY KEY(`type_id`),
ADD UNIQUE KEY `type_name`(`type_name`);

ALTER TABLE `populations`
ADD PRIMARY KEY(`population_id`),
ADD UNIQUE KEY `population_name`(`population_name`);

ALTER TABLE `realms`
ADD PRIMARY KEY(`realm_id`),
ADD KEY `realm_zone_fkid`(`realm_zone_fkid`),
ADD KEY `realm_type_fkid`(`realm_type_fkid`),
ADD KEY `realm_population_fkid`(`realm_population_fkid`);

ALTER TABLE `races`
ADD PRIMARY KEY(`race_id`),
ADD UNIQUE KEY `race_name`(`race_name`);

ALTER TABLE `classes`
ADD PRIMARY KEY(`class_id`),
ADD UNIQUE KEY `class_name`(`class_name`);

ALTER TABLE `factions`
ADD PRIMARY KEY(`faction_id`),
ADD UNIQUE KEY `faction_name`(`faction_name`);

ALTER TABLE `guilds`
ADD PRIMARY KEY(`guild_id`),
ADD UNIQUE KEY `guild_name`(`guild_name`),
ADD KEY `guild_leader_fkid`(`guild_leader_fkid`);

ALTER TABLE `characters`
ADD PRIMARY KEY(`character_id`),
ADD UNIQUE KEY `character_name`(`character_name`),
ADD KEY `character_race_fkid`(`character_race_fkid`),
ADD KEY `character_class_fkid`(`character_class_fkid`),
ADD KEY `character_faction_fkid`(`character_faction_fkid`),
ADD KEY `character_realm_fkid`(`character_realm_fkid`),
ADD KEY `character_guild_fkid`(`character_guild_fkid`);

ALTER TABLE `items`
ADD PRIMARY KEY(`item_id`);

ALTER TABLE `inventories`
ADD PRIMARY KEY(`inventory_character_fkid`, `inventory_item_fkid`);


-- ///////////////////////////////////////////////////////////////////////////////
-- Auto-incrémentation
-- ///////////////////////////////////////////////////////////////////////////////
ALTER TABLE `zones` MODIFY `zone_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 7;
ALTER TABLE `types` MODIFY `type_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 4;
ALTER TABLE `populations` MODIFY `population_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 6;
ALTER TABLE `realms` MODIFY `realm_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 27;
ALTER TABLE `races` MODIFY `race_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 25;
ALTER TABLE `classes` MODIFY `class_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 14;
ALTER TABLE `factions` MODIFY `faction_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3;
ALTER TABLE `guilds` MODIFY `guild_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 10;
ALTER TABLE `characters` MODIFY `character_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 51;
ALTER TABLE `items` MODIFY `item_id` INT NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 24;


-- ///////////////////////////////////////////////////////////////////////////////
-- Contraintes
-- ///////////////////////////////////////////////////////////////////////////////
ALTER TABLE `realms`
ADD CONSTRAINT `realms_ibfk_1` FOREIGN KEY(`realm_zone_fkid`) REFERENCES `zones`(`zone_id`),
ADD CONSTRAINT `realms_ibfk_2` FOREIGN KEY(`realm_type_fkid`) REFERENCES `types`(`type_id`),
ADD CONSTRAINT `realms_ibfk_3` FOREIGN KEY(`realm_population_fkid`) REFERENCES `populations`(`population_id`);

ALTER TABLE `guilds`
ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY(`guild_leader_fkid`) REFERENCES `characters`(`character_id`);

ALTER TABLE `characters`
ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY(`character_race_fkid`) REFERENCES `races`(`race_id`),
ADD CONSTRAINT `characters_ibfk_2` FOREIGN KEY(`character_class_fkid`) REFERENCES `classes`(`class_id`),
ADD CONSTRAINT `characters_ibfk_3` FOREIGN KEY(`character_faction_fkid`) REFERENCES `factions`(`faction_id`),
ADD CONSTRAINT `characters_ibfk_4` FOREIGN KEY(`character_realm_fkid`) REFERENCES `realms`(`realm_id`),
ADD CONSTRAINT `characters_ibfk_5` FOREIGN KEY(`character_guild_fkid`) REFERENCES `guilds`(`guild_id`);

ALTER TABLE `inventories`
ADD CONSTRAINT `inventories_ibfk_2` FOREIGN KEY(`inventory_character_fkid`) REFERENCES `characters`(`character_id`),
ADD CONSTRAINT `inventories_ibfk_3` FOREIGN KEY(`inventory_item_fkid`) REFERENCES `items`(`item_id`);


-- ///////////////////////////////////////////////////////////////////////////////
-- FIN DE LA TRANSACTION
-- ///////////////////////////////////////////////////////////////////////////////
COMMIT;
