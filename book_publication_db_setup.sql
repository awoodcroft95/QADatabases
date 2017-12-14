create database if not exists bookpublication;

create table if not exists bookpublication.book (
    'bookID' INT NOT NULL AUTO_INCREMENT,
    'Title' VARCHAR(100) NOT NULL,
    'ISBN' VARCHAR(13),
    'Description' VARCHAR(200),
    'publishDate' DATE NOT NULL,
    'Sales' INT,
    'CompletedStatus' BOOLEAN DEFAULT 0,
    'genre' VARCHAR(45),
    PRIMARY KEY ('bookID'),
    UNIQUE INDEX `bookID_UNIQUE` (`bookID` ASC))
)

create table if not exists bookpublication.author (
    'authorID' INT NOT NULL AUTO_INCREMENT,
    'First_Name' VARCHAR(45),
    'Last_Name' VARCHAR(45)
    PRIMARY KEY ('authorID'),
    UNIQUE INDEX `authorID_UNIQUE` (`authorID` ASC))
)

create table if not exists bookpublication.book_author (
    'pairID' INT NOT NULL AUTO_INCREMENT,
    'authorID' INT NOT NULL,
    'bookID' INT NOT NULL,
    PRIMARY KET ('pairID'),
    UNIQUE INDEX 'pairID_UNIQUE' ('pairID' ASC)),
    CONSTRAINT `bookID`
    FOREIGN KEY (`bookID`)
    REFERENCES `bookpublication`.`book` (`bookID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `authorID`
    FOREIGN KEY (`authorID`)
    REFERENCES `bookpublication`.`author` (`authorID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)

