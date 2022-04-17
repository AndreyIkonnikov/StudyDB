USE HumanResourcesDepartment;

CREATE TABLE VacationReason (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_VacationReason PRIMARY KEY,
    Reason VARCHAR(255) NOT NULL,
);

ALTER TABLE VacationReason
ADD CONSTRAINT u_VacationReasonReason UNIQUE(Reason);