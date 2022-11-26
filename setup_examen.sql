
CREATE DATABASE toysdb;

USE toysdb;

DROP TABLE Toy;

DROP TABLE category;

TRUNCATE Toy;

CREATE TABLE Toy(
	ToyID INT AUTO_INCREMENT PRIMARY KEY, -- UNIQUE NOT NULL
	Description VARCHAR(255),
	Price DOUBLE,
    TypeID INT,
    CategoryID INT,
    
	FOREIGN KEY (TypeID) REFERENCES Type(TypeID),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
    
);

CREATE TABLE Type(
	TypeID INT AUTO_INCREMENT PRIMARY KEY, -- UNIQUE NOT NULL
    TypeName VARCHAR(255)
);

CREATE TABLE Category(
	CategoryID INT AUTO_INCREMENT PRIMARY KEY, -- UNIQUE NOT NULL
    CategoryName VARCHAR(255)
);

SELECT * FROM Type;
SELECT * FROM Category;
SELECT * FROM Toy;

INSERT INTO Type(TypeName)
	VALUES('Figurine');
INSERT INTO Type(TypeName)
	VALUES('Electronice');

INSERT INTO Category(CategoryName)
	VALUES('LEGO');
INSERT INTO Category(CategoryName)
	VALUES('Papusi');  
INSERT INTO Category(CategoryName)
	VALUES('Masini');
INSERT INTO Category(CategoryName)
	VALUES('Puzzle');
INSERT INTO Category(CategoryName)
	VALUES('Exterior');   

INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('papusa barbie', '10.50', '1','2');
INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('masinuta cu telecomanda', '30.50', '2','3');
INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('Set Star Wars', '20.30', '1','1');   
INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('pistol cu bile', '2.99', '1','5');
INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('family puzzle', '1.50', '1','4');    
INSERT INTO Toy(Description,Price, TypeID, CategoryID)
	VALUES('mos craciun', '22.40', '2','2');    
