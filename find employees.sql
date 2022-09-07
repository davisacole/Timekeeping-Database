/*Searches database for employees using 2 credentials, department number and section number
uses TestEmp script but can be altered for actual use*/

USE timekeeper;
SELECT * FROM EMPLOYEE
WHERE
	DeptCode=(SELECT TestDept FROM TEST) && SectionID=(SELECT TestSect FROM TEST)