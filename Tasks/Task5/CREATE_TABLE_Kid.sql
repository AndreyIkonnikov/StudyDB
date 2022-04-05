USE HumanResourcesDepartment;

CREATE TABLE Kid (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Kid PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
	SurName VARCHAR(255) NOT NULL,
	SecondName VARCHAR(255) NOT NULL,
	ID_Employee UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_KidEmployee FOREIGN KEY 
	REFERENCES Employee(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
	ID_Gender UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_KidGender FOREIGN KEY 
	REFERENCES Gender(ID)
	ON DELETE NO ACTION 
	ON UPDATE NO ACTION,
);