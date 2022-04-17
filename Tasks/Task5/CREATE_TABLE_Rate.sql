USE HumanResourcesDepartment;

CREATE TABLE Rate (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Rate PRIMARY KEY,
    [Coefficient] FLOAT NOT NULL,
);

ALTER TABLE Rate
ADD CONSTRAINT u_RateCoefficient UNIQUE([Coefficient]);