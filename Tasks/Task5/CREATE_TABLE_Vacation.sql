USE HumanResourcesDepartment;

CREATE TABLE Vacation (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Vacation PRIMARY KEY,
    BeginDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	ID_Employee UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_VacationEmployee FOREIGN KEY 
	REFERENCES Employee(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
	ID_VacationReason UNIQUEIDENTIFIER NOT NULL
	CONSTRAINT FK_VacationReason FOREIGN KEY 
	REFERENCES VacationReason(ID)
	ON DELETE CASCADE 
	ON UPDATE CASCADE,
);