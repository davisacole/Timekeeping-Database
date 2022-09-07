# Timekeeping-Database
This project is intended to be used by a business that tracks the hours worked by their employees. Each section of the project 
will be further described below. Although the Database and functions are mostly functional without modification, there are
several functions that are not operational without execution of the TestEmp script, this is because the functions were created
to be called externally with variables that would be passed into them. If being used practically, they will need to be slightly modified. 

DDL Folder
	ddl.sql-		This script constructs the database and all of its contained tables, as well as some tables with 
				predetermined data that is used for calculations later on.
	drop.sql-		Deletes all data and tables from the database, only execute if the database needs to be reconstructed.
				If executed any stored data should be backed up.
	loaddata.sql-	Loads the constructed database with artificial employee data, only used in order to test the
				functions before practical use.
	TestEmp.sql-	Creates a temporary table containing values used in several functions, in a practical scenario,
				these variables would be imported via other methods such as a card reader or a command

Functions Folder
	add employee-
		adds an employee with values contained in the scripts that can be modified
	delete employee-
		deletes an employee from the database with values contained in the TestEmp.sql that can be modified
	find employees-
		finds employees based on their department and sectionwith values contained in the TestEmp.sql that can be modified
	find grades-
		indexes the employee table and adjusts each employees "grade" based on how much time they have missed from work grades are assined as follows
		A - less than 10 hours missed
		B - between 10 and 20 hours missed
		C - between 20 and 30 hours missed
		D - more than 30 hours missed
	longestworker-
		Returns employee who has missed the most hours from work
	punch brk in-
		executed when an employee punches back in from break uses values from TestEmp but can be modified to import an Employee ID variable
	punch brk out-
		executed when an employee punches out for break uses values from TestEmp but can be modified to import an Employee ID variable
	punch in-
		executed when an employee punches in for work uses values from TestEmp but can be modified to import an Employee ID variable
	punch out-
		executed when an employee punches back out from work uses values from TestEmp but can be modified to import an Employee ID variable

