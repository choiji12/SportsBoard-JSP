CREATE TABLE `project`.`user` (
  `userID` VARCHAR(45) NOT NULL,
  `userPassword` VARCHAR(45) NOT NULL,
  `userNick` VARCHAR(45) NOT NULL,
  `userName` VARCHAR(45) NOT NULL,
  `userEmail` VARCHAR(45) NOT NULL,
  `userDate` DATETIME(6) NOT NULL,
  PRIMARY KEY (`userID`));

CREATE TABLE `project`.`fitness` (
  `fitnessID` INT NOT NULL,
  `fitnessTitle` VARCHAR(45) NOT NULL,
  `userID` VARCHAR(45) NOT NULL,
  `fitnessDate` DATETIME(6) NOT NULL,
  `fitnessContent` VARCHAR(999) NOT NULL,
  `fitnessAvailable` INT NOT NULL,
  `fitnessFileName` VARCHAR(99) NULL,
  `fitnessFIleRealName` VARCHAR(99) NULL,
  PRIMARY KEY (`fitnessID`));

CREATE TABLE `project`.`diet` (
  `dietID` INT NOT NULL,
  `dietTitle` VARCHAR(45) NOT NULL,
  `userID` VARCHAR(45) NOT NULL,
  `dietDate` DATETIME(6) NOT NULL,
  `dietContent` VARCHAR(999) NOT NULL,
  `dietAvailable` INT NOT NULL,
  `dietFileName` VARCHAR(99) NULL,
  `dietFIleRealName` VARCHAR(99) NULL,
  PRIMARY KEY (`dietID`));

CREATE TABLE `project`.`market` (
  `marketID` INT NOT NULL,
  `marketTitle` VARCHAR(45) NOT NULL,
  `userID` VARCHAR(45) NOT NULL,
  `marketDate` DATETIME(6) NOT NULL,
  `marketContent` VARCHAR(999) NOT NULL,
  `marketAvailable` INT NOT NULL,
  `marketFileName` VARCHAR(99) NULL,
  `marketFIleRealName` VARCHAR(99) NULL,
  PRIMARY KEY (`marketID`));
