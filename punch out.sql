/*executed when an employee punches back out from work
uses values from TestEmp but can be modified to import an Employee ID variable*/

USE timekeeper;

UPDATE CLOCK
SET EndTmDt=Now(), TotChng = TIMEDIFF(TIMEDIFF(ShftLen,TIMEDIFF(EndTmDt, StrtTmDt)),BrkChng)
WHERE EmpID=(SELECT TestID FROM TEST);

UPDATE CALENDAR
SET 
	/*TotChng = TotChng+(SELECT(TotChng) FROM CLOCK WHERE EmpID=11111),
	TotHrs = TotHrs+(SELECT ShftLen FROM CLOCK WHERE EmpID=11111)*/
    
    TotChng = SEC_TO_TIME(TIME_TO_SEC(TotChng) + TIME_TO_SEC((SELECT(TotChng) FROM CLOCK WHERE EmpID=(SELECT TestID FROM TEST)))),
    TotHrs = SEC_TO_TIME(TIME_TO_SEC(TotHrs) + TIME_TO_SEC((SELECT(ShftLen) FROM CLOCK WHERE EmpID=(SELECT TestID FROM TEST))))
    
WHERE EmpID = (SELECT TestID FROM TEST);

UPDATE EMPLOYEE
SET 
	TotHrs = (SELECT(TotChng) FROM CALENDAR WHERE EmpID=(SELECT TestID FROM TEST))
WHERE EmpID = (SELECT TestID FROM TEST);

UPDATE DEPARTMENT
SET TotEmp=TotEmp-1
WHERE DeptCode = (SELECT DeptCode FROM EMPLOYEE WHERE EmpID = (SELECT TestID FROM TEST));
