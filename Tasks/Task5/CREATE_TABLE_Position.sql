USE HumanResourcesDepartment;

CREATE TABLE Position (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Position PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL,
    Salary INT NOT NULL,
);

ALTER TABLE Position
ADD CONSTRAINT u_CompositionName UNIQUE([Name]);