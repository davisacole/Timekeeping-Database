/*executed when an employee punches back in from break
uses values from TestEmp but can be modified to import an Employee ID variable*/
USE timekeeper;

UPDATE CLOCK
SET TotChng = Now(), BrkChng = TIMEDIFF(TotChng,BrkChng), TotChng = 0
WHERE EmpID=(SELECT TestID FROM TEST);


UPDATE DEPARTMENT
SET TotBrk=TotBrk+1
WHERE DeptCode = (SELECT DeptCode FROM EMPLOYEE WHERE EmpID = (SELECT TestID FROM TEST));