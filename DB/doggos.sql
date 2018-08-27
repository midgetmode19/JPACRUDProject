-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema doggos
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `doggos` ;

-- -----------------------------------------------------
-- Schema doggos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `doggos` DEFAULT CHARACTER SET utf8 ;
USE `doggos` ;

-- -----------------------------------------------------
-- Table `doggo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doggo` ;

CREATE TABLE IF NOT EXISTS `doggo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `breed` VARCHAR(100) NOT NULL,
  `age` VARCHAR(25) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `photo_link` VARCHAR(500) NULL,
  `weight_lbs` INT NULL,
  `nickname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS userdoggo@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'userdoggo'@'localhost' IDENTIFIED BY 'userdoggo';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'userdoggo'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `doggo`
-- -----------------------------------------------------
START TRANSACTION;
USE `doggos`;
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (1, 'Pistol', 'Australian Shepherd', '4 years', 'Spayed Female', 'https://scontent.fapa1-2.fna.fbcdn.net/v/t31.0-8/25438800_10102296534264142_1888057233853997690_o.jpg?_nc_cat=0&oh=64b65a47ea61c4ba7da4b7a8364abed5&oe=5C2FC869', 18, 'Chicken Nugget');
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (2, 'Kaymus', 'Golden Retriever', '9 months', 'Female', 'https://scontent.fapa1-2.fna.fbcdn.net/v/t1.0-9/32104584_10102485290125882_2589676438365929472_o.jpg?_nc_cat=0&oh=29652ba8b1bba3f606071419611913e3&oe=5BF62360', 65, NULL);
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (3, 'Loch Ness Monster', 'Border Terrier Mix', '4 years', 'Spayed Female', NULL, 39, 'Nessi');
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (4, 'Pico de Gallo', 'Chihuahua', '7 years', 'Neutered Male', NULL, 8, 'Pico');
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (5, 'Loki', 'Australian Shepherd', '5 years', 'Neutered Male', NULL, 22, NULL);
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (6, 'Tater', 'Boxer mix', '10 months', 'Male', NULL, 53, NULL);
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (7, 'Morticia', 'Chihuahua', '11 years', 'Spayed Female', NULL, 6, 'Tish');
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (8, 'Chloe', 'Dachshund mix', '3 years', 'Spayed Female', NULL, 28, NULL);
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (9, 'Ziggles', 'Welsh Corgi', '5 years', 'Spayed Female', NULL, 36, NULL);
INSERT INTO `doggo` (`id`, `name`, `breed`, `age`, `gender`, `photo_link`, `weight_lbs`, `nickname`) VALUES (10, 'Theodore', 'Beagle', '8 years', 'Neutered Male', NULL, 32, 'Theo');

COMMIT;

