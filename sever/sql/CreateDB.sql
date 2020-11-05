-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL,
  `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` VARCHAR(45) NOT NULL,
  `Type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Types_Types1_idx` (`Type_id` ASC),
  UNIQUE INDEX `Name_UNIQUE` (`Name` ASC),
  CONSTRAINT `fk_Types_Types1`
    FOREIGN KEY (`Type_id`)
    REFERENCES `Types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL,
  `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` VARCHAR(45) NOT NULL,
  `LastName` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `User_Type` INT NOT NULL,
  `Username` VARCHAR(45) NOT NULL,
  `Following` VARCHAR(45) NULL,
  `Followers` VARCHAR(45) NULL,
  `Suggested_User` VARCHAR(45) NOT NULL,
  `Follow_Requests` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Users_Types1_idx` (`User_Type` ASC),
  UNIQUE INDEX `Username_UNIQUE` (`Username` ASC),
  CONSTRAINT `fk_Users_Types1`
    FOREIGN KEY (`User_Type`)
    REFERENCES `Types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL,
  `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `URL` VARCHAR(2048) NULL,
  `Text` VARCHAR(4000) NULL,
  `Media_Type` VARCHAR(45) NOT NULL DEFAULT 'none',
  `Privacy_Setting` INT NULL COMMENT '0 - hidden\n1 - only me\n2 - only friends\n4 - public',
  `Owner_id` INT NOT NULL,
  `Workout_Type` VARCHAR(45) NOT NULL,
  `Exercise` VARCHAR(45) NOT NULL,
  `Duration` VARCHAR(45) NOT NULL,
  `Num_Sets` VARCHAR(45) NULL DEFAULT 'No Data Entered',
  `Num_Reps` VARCHAR(45) NULL DEFAULT 'No Data Entered',
  `Distance` VARCHAR(45) NULL DEFAULT 'No Data Entered',
  `Location` VARCHAR(45) NOT NULL,
  `Users_That_Liked` VARCHAR(45) NULL DEFAULT 'No Likes',
  `Post_id` INT NOT NULL,
  INDEX `fk_Posts_Users1_idx` (`Owner_id` ASC),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `Users_That_Liked_UNIQUE` (`Users_That_Liked` ASC),
  CONSTRAINT `fk_Posts_Users1`
    FOREIGN KEY (`Owner_id`)
    REFERENCES `Users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Water_Intake`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Water_Intake` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NOT NULL,
  `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Ounces` VARCHAR(45) NOT NULL,
  `Owner_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Water_Intake_Users1_idx` (`Owner_id` ASC),
  CONSTRAINT `fk_Water_Intake_Users1`
    FOREIGN KEY (`Owner_id`)
    REFERENCES `Users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Types`
-- -----------------------------------------------------
START TRANSACTION;
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (1, 'Now()', DEFAULT, 'Types', 1);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (2, 'Now()', DEFAULT, 'User Types', 1);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (3, 'Now()', DEFAULT, 'Media Types', 1);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (4, 'Now()', DEFAULT, 'Contact Method Types', 1);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (5, 'Now()', DEFAULT, 'Admin', 2);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (6, 'Now()', DEFAULT, 'User', 2);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'image/gif', 3);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'image/jpeg', 3);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'image/png', 3);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'video/webm', 3);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'video/ogg', 3);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'Email', 4);
INSERT INTO `Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES (DEFAULT, 'Now()', DEFAULT, 'Cell Phone', 4);

COMMIT;