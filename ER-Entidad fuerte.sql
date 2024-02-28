-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EJEMPLOS
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EJEMPLOS
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EJEMPLOS` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema ejemplos_cutres
-- -----------------------------------------------------
USE `EJEMPLOS` ;

-- -----------------------------------------------------
-- Table `EJEMPLOS`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`LIBRO` (
  `isbn` INT NOT NULL,
  `titulo prin` VARCHAR(45) NOT NULL,
  `subtitulo` VARCHAR(45) NULL,
  `editorial` VARCHAR(45) NOT NULL,
  `idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`isbn`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`AUTOR` (
  `autor` INT NOT NULL,
  `LIBRO_isbn` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EJEMPLOS`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EJEMPLOS`.`EDICION` (
  `numero` INT NOT NULL,
  `año` VARCHAR(45) NOT NULL,
  `LIBRO_isbn` INT NOT NULL,
  PRIMARY KEY (`LIBRO_isbn`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
