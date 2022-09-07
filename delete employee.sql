/*used to delete an employee from the database, uses TestEmp script*/
USE timekeeper;

DELETE FROM EMPLOYEE WHERE EmpID=(SELECT Testdel FROM TEST);
