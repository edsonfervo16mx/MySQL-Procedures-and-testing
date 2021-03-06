-- MySQL Script generated by MySQL Workbench
-- 01/03/19 09:26:43
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydemodb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydemodb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydemodb` DEFAULT CHARACTER SET utf8 ;
USE `mydemodb` ;

-- -----------------------------------------------------
-- Table `mydemodb`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydemodb`.`departamento` (
  `nombre` VARCHAR(100) NOT NULL,
  `estado` VARCHAR(8) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydemodb`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydemodb`.`empleado` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(140) NOT NULL,
  `apellido_paterno` VARCHAR(140) NOT NULL,
  `apellido_materno` VARCHAR(140) NOT NULL,
  `fecha_nacimiento` DATE NULL,
  `estado` VARCHAR(8) NOT NULL DEFAULT 'active',
  `departamento` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_empleado_departamento_idx` (`departamento` ASC),
  CONSTRAINT `fk_empleado_departamento`
    FOREIGN KEY (`departamento`)
    REFERENCES `mydemodb`.`departamento` (`nombre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
