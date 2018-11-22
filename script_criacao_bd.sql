-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema ep_banco_de_dados
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ep_banco_de_dados` ;

-- -----------------------------------------------------
-- Schema ep_banco_de_dados
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ep_banco_de_dados` ;
USE `ep_banco_de_dados` ;

-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`genero_filme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`genero_filme` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`genero_filme` (
  `id_genero_filme` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_genero_filme`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`idioma`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`idioma` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`idioma` (
  `id_idioma` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_idioma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_idioma`),
  UNIQUE INDEX `nome_idioma_UNIQUE` (`nome_idioma` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`pais` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`pais` (
  `id_pais` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE INDEX `nome_pais_UNIQUE` (`nome_pais` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`filme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`filme` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`filme` (
  `id_filme` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(60) NOT NULL,
  `duracao` TIME NOT NULL,
  `data_de_lancamento` DATE NOT NULL,
  `genero_filme_fk` INT UNSIGNED NOT NULL,
  `idioma_fk` INT UNSIGNED NOT NULL,
  `pais_fk` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_filme`),
  INDEX `fk_filme_genero_filme1_idx` (`genero_filme_fk` ASC),
  INDEX `fk_filme_idioma1_idx` (`idioma_fk` ASC),
  INDEX `fk_filme_pais1_idx` (`pais_fk` ASC),
  CONSTRAINT `fk_filme_genero_filme1`
    FOREIGN KEY (`genero_filme_fk`)
    REFERENCES `ep_banco_de_dados`.`genero_filme` (`id_genero_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_idioma1`
    FOREIGN KEY (`idioma_fk`)
    REFERENCES `ep_banco_de_dados`.`idioma` (`id_idioma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_pais1`
    FOREIGN KEY (`pais_fk`)
    REFERENCES `ep_banco_de_dados`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`atores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`atores` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`atores` (
  `id_atores` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `ano_nascimento` YEAR NOT NULL,
  `genero` ENUM('MASC', 'FEM') NOT NULL,
  PRIMARY KEY (`id_atores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`diretor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`diretor` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`diretor` (
  `id_diretor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `ano_nascimento` YEAR NOT NULL,
  `genero` ENUM('MASC', 'FEM') NOT NULL,
  PRIMARY KEY (`id_diretor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`avaliadores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`avaliadores` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`avaliadores` (
  `id_avaliadores` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_avaliadores`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`orgaos_imprensa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`orgaos_imprensa` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`orgaos_imprensa` (
  `id_orgaos_imprensa` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_orgao` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`id_orgaos_imprensa`),
  UNIQUE INDEX `nome_orgao_UNIQUE` (`nome_orgao` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`avaliadores_has_orgaos_imprensa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`avaliadores_has_orgaos_imprensa` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`avaliadores_has_orgaos_imprensa` (
  `id_avaliadores` INT UNSIGNED NOT NULL,
  `id_orgaos_imprensa` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_avaliadores`, `id_orgaos_imprensa`),
  INDEX `fk_avaliadores_has_orgaos_imprensa_orgaos_imprensa1_idx` (`id_orgaos_imprensa` ASC),
  INDEX `fk_avaliadores_has_orgaos_imprensa_avaliadores1_idx` (`id_avaliadores` ASC),
  CONSTRAINT `fk_avaliadores_has_orgaos_imprensa_avaliadores1`
    FOREIGN KEY (`id_avaliadores`)
    REFERENCES `ep_banco_de_dados`.`avaliadores` (`id_avaliadores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliadores_has_orgaos_imprensa_orgaos_imprensa1`
    FOREIGN KEY (`id_orgaos_imprensa`)
    REFERENCES `ep_banco_de_dados`.`orgaos_imprensa` (`id_orgaos_imprensa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`resultados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`resultados` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`resultados` (
  `idresultados` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `resultado_original` VARCHAR(20) NOT NULL,
  `resultado_normalizado` DECIMAL(2,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`idresultados`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`avaliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`avaliacao` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`avaliacao` (
  `id_avaliacao` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_avaliacao` DATE NOT NULL,
  `id_avaliadores_orgaos_imprensa` INT UNSIGNED NOT NULL,
  `id_orgaos_imprensa_avaliadores` INT UNSIGNED NOT NULL,
  `resultados_idresultados` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_avaliacao`, `id_avaliadores_orgaos_imprensa`, `id_orgaos_imprensa_avaliadores`, `resultados_idresultados`),
  INDEX `fk_avaliacao_avaliadores_has_orgaos_imprensa1_idx` (`id_avaliadores_orgaos_imprensa` ASC, `id_orgaos_imprensa_avaliadores` ASC),
  INDEX `fk_avaliacao_resultados1_idx` (`resultados_idresultados` ASC),
  CONSTRAINT `fk_avaliacao_avaliadores_has_orgaos_imprensa1`
    FOREIGN KEY (`id_avaliadores_orgaos_imprensa` , `id_orgaos_imprensa_avaliadores`)
    REFERENCES `ep_banco_de_dados`.`avaliadores_has_orgaos_imprensa` (`id_avaliadores` , `id_orgaos_imprensa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_avaliacao_resultados1`
    FOREIGN KEY (`resultados_idresultados`)
    REFERENCES `ep_banco_de_dados`.`resultados` (`idresultados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`filme_has_diretor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`filme_has_diretor` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`filme_has_diretor` (
  `filme_id_filme` INT UNSIGNED NOT NULL,
  `diretor_id_diretor` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`filme_id_filme`, `diretor_id_diretor`),
  INDEX `fk_filme_has_diretor_diretor1_idx` (`diretor_id_diretor` ASC),
  INDEX `fk_filme_has_diretor_filme1_idx` (`filme_id_filme` ASC),
  CONSTRAINT `fk_filme_has_diretor_filme1`
    FOREIGN KEY (`filme_id_filme`)
    REFERENCES `ep_banco_de_dados`.`filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_has_diretor_diretor1`
    FOREIGN KEY (`diretor_id_diretor`)
    REFERENCES `ep_banco_de_dados`.`diretor` (`id_diretor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`elenco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`elenco` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`elenco` (
  `filme_id_filme` INT UNSIGNED NOT NULL,
  `atores_id_atores` INT UNSIGNED NOT NULL,
  `papel` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`filme_id_filme`, `atores_id_atores`),
  INDEX `fk_filme_has_atores_atores1_idx` (`atores_id_atores` ASC),
  INDEX `fk_filme_has_atores_filme1_idx` (`filme_id_filme` ASC),
  CONSTRAINT `fk_filme_has_atores_filme1`
    FOREIGN KEY (`filme_id_filme`)
    REFERENCES `ep_banco_de_dados`.`filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_has_atores_atores1`
    FOREIGN KEY (`atores_id_atores`)
    REFERENCES `ep_banco_de_dados`.`atores` (`id_atores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`filme_has_avaliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`filme_has_avaliacao` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`filme_has_avaliacao` (
  `filme_id_filme` INT UNSIGNED NOT NULL,
  `avaliacao_id_avaliacao` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`filme_id_filme`, `avaliacao_id_avaliacao`),
  INDEX `fk_filme_has_avaliacao_avaliacao1_idx` (`avaliacao_id_avaliacao` ASC),
  INDEX `fk_filme_has_avaliacao_filme1_idx` (`filme_id_filme` ASC),
  CONSTRAINT `fk_filme_has_avaliacao_filme1`
    FOREIGN KEY (`filme_id_filme`)
    REFERENCES `ep_banco_de_dados`.`filme` (`id_filme`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filme_has_avaliacao_avaliacao1`
    FOREIGN KEY (`avaliacao_id_avaliacao`)
    REFERENCES `ep_banco_de_dados`.`avaliacao` (`id_avaliacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ep_banco_de_dados`.`formas_de_avaliacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ep_banco_de_dados`.`formas_de_avaliacao` ;

CREATE TABLE IF NOT EXISTS `ep_banco_de_dados`.`formas_de_avaliacao` (
  `idformas_de_avaliacao` INT UNSIGNED NOT NULL,
  `id_orgaos_imprensa` INT UNSIGNED NOT NULL,
  `tipo_de_avaliacao` ENUM('ESTRELAS', 'QUALITATIVO', 'NOTA', 'PORCENTAGEM') NOT NULL,
  PRIMARY KEY (`idformas_de_avaliacao`, `id_orgaos_imprensa`),
  INDEX `fk_formas_de_avaliacao_orgaos_imprensa1_idx` (`id_orgaos_imprensa` ASC),
  CONSTRAINT `fk_formas_de_avaliacao_orgaos_imprensa1`
    FOREIGN KEY (`id_orgaos_imprensa`)
    REFERENCES `ep_banco_de_dados`.`orgaos_imprensa` (`id_orgaos_imprensa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
