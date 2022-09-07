/*executed when an employee punches in for work
uses values from TestEmp but can be modified to import an Employee ID variable*/

USE timekeeper;

UPDATE CLOCK
SET StrtTmDt=Now(), EndTmDt=0, ShftLen=(SELECT ShftLen FROM SECTION WHERE SectID = 1), BrkChng = 0, TotChng = 0
WHERE EmpID=(SELECT TestID FROM TEST);


UPDATE DEPARTMENT
SET TotEmp=TotEmp+1
WHERE DeptCode = (SELECT DeptCode FROM EMPLOYEE WHERE EmpID = (SELECT TestID FROM TEST));
