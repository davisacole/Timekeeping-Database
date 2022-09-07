/*script to add new employee to the database*/

/*DECLARE AddfName char(20);
DECLARE AddlName VarChar(30);
SET AddfName = 'NewfName';
SET AddlName = 'NewlName';*/
USE timekeeper;
INSERT INTO 
	EMPLOYEE (Fname, nameL, DeptCode, sectionID, TotHrs, standingGrade)
VALUES
	('New', 'Employee', 222, 1, 0, 'N');   /*CHANGE WHAT IS INSERTED*/

INSERT INTO
	CALENDAR (TotHrs, TotChng)
VALUES
	(0, 0);
    
INSERT INTO
	CLOCK (StrtTmDt, EndTmDt, ShftLen,TotChng, BrkChng)
VALUES
	(0, 0, 0, 0, 0);
    
    