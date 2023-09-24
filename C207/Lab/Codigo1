-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produtos` (
  `Produtos id` INT NOT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  `Marca` VARCHAR(255) NOT NULL,
  `Preco` DECIMAL(10,2) NOT NULL,
  `Estoque` INT NOT NULL,
  PRIMARY KEY (`Produtos id`))

-- -----------------------------------------------------
-- Table `mydb`.`Lojas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Lojas` (
  `idLojas` INT NOT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  `Endereço` VARCHAR(255) NOT NULL,
  `Telefone` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idLojas`))

-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `Cpf` VARCHAR(11) NOT NULL,
  `Nome` VARCHAR(255) NOT NULL,
  `Cep` INT NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Senha` VARCHAR(255) NOT NULL,
  `Telefone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Cpf`))

-- -----------------------------------------------------
-- Table `mydb`.`Compras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Compras` (
  `idCompras` INT NOT NULL,
  `ClienteCpf` VARCHAR(11) NOT NULL,
  `ValorTotal` DECIMAL(10,2) NOT NULL,
  `TipoPagamento` VARCHAR(50) NOT NULL,
  `CodigoRastreamento` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCompras`),
  INDEX `ClienteCpf_idx` (`ClienteCpf` ASC) VISIBLE,
  CONSTRAINT `ClienteCpf`
    FOREIGN KEY (`ClienteCpf`)
    REFERENCES `mydb`.`Clientes` (`Cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

-- -----------------------------------------------------
-- Table `mydb`.`Produtos Vendindos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produtos Vendindos` (
  `CompraID` INT NOT NULL,
  `ProdutoID` INT NOT NULL,
  `Quantidade` INT NOT NULL,
  INDEX `CompraID_idx` (`CompraID` ASC) VISIBLE,
  INDEX `ProdutoID_idx` (`ProdutoID` ASC) VISIBLE,
  PRIMARY KEY (`CompraID`, `ProdutoID`),
  CONSTRAINT `CompraID`
    FOREIGN KEY (`CompraID`)
    REFERENCES `mydb`.`Compras` (`idCompras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ProdutoID`
    FOREIGN KEY (`ProdutoID`)
    REFERENCES `mydb`.`Produtos` (`Produtos id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

-- -----------------------------------------------------
-- Table `mydb`.`Correios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Correios` (
  `CorreioID` INT NOT NULL,
  `PrazoEntrega` INT NOT NULL,
  `ValorFrete` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`CorreioID`))

-- -----------------------------------------------------
-- Table `mydb`.`Entregas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Entregas` (
  `CompraID` INT NOT NULL,
  `CorreioID` INT NOT NULL,
  INDEX `CompraID_idx` (`CompraID` ASC) VISIBLE,
  INDEX `CorreioID_idx` (`CorreioID` ASC) VISIBLE,
  PRIMARY KEY (`CompraID`),
  CONSTRAINT `CompraID`
    FOREIGN KEY (`CompraID`)
    REFERENCES `mydb`.`Compras` (`idCompras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CorreioID`
    FOREIGN KEY (`CorreioID`)
    REFERENCES `mydb`.`Correios` (`CorreioID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

-- -----------------------------------------------------
-- Table `mydb`.`Avaliação`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Avaliação` (
  `ClienteCPF` VARCHAR(11) NOT NULL,
  `ProdutoID` INT NOT NULL,
  `Nota` INT NOT NULL,
  `Comentario` TEXT(100) NOT NULL,
  PRIMARY KEY (`ClienteCPF`, `ProdutoID`),
  INDEX `ProdutoID_idx` (`ProdutoID` ASC) VISIBLE,
  CONSTRAINT `ClienteCPF`
    FOREIGN KEY (`ClienteCPF`)
    REFERENCES `mydb`.`Clientes` (`Cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ProdutoID`
    FOREIGN KEY (`ProdutoID`)
    REFERENCES `mydb`.`Produtos` (`Produtos id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
