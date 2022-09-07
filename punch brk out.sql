/*executed when an employee punches out for break
uses values from TestEmp but can be modified to import an Employee ID variable*/

USE timekeeper;

UPDATE CLOCK
SET BrkChng = NOW()
WHERE EmpID=(SELECT TestID FROM TEST);

UPDATE DEPARTMENT
SET TotBrk=TotBrk-1
WHERE DeptCode = (SELECT DeptCode FROM EMPLOYEE WHERE EmpID = (SELECT TestID FROM TEST));