-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema AdoptionService
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AdoptionService
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AdoptionService` DEFAULT CHARACTER SET utf8 ;
USE `AdoptionService` ;

-- -----------------------------------------------------
-- Table `AdoptionService`.`animal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AdoptionService`.`animal` (
  `animalID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Type` ENUM('Dog', 'Cat', 'Bird', 'Reptile') NOT NULL,
  `Breed` VARCHAR(45) NULL,
  `InDate` DATE NOT NULL,
  `OutDate` DATE NULL,
  `HasBeenNeutered` TINYINT(1) NOT NULL,
  `Age` INT NOT NULL,
  `HasBeenAdopted` TINYINT(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`animalID`),
  UNIQUE INDEX `animalID_UNIQUE` (`animalID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AdoptionService`.`owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AdoptionService`.`owner` (
  `ownerID` INT NOT NULL AUTO_INCREMENT,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(100) NULL,
  `Phone_No` VARCHAR(11) NULL,
  PRIMARY KEY (`ownerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AdoptionService`.`animal_owner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AdoptionService`.`animal_owner` (
  `animalID` INT NOT NULL,
  `ownerID` INT NOT NULL,
  `pairingID` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pairingID`),
  INDEX `animalID_idx` (`animalID` ASC),
  INDEX `ownerID_idx` (`ownerID` ASC),
  CONSTRAINT `animalID`
    FOREIGN KEY (`animalID`)
    REFERENCES `AdoptionService`.`animal` (`animalID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ownerID`
    FOREIGN KEY (`ownerID`)
    REFERENCES `AdoptionService`.`owner` (`ownerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
