/*indexes the employee table and adjusts each employees "grade" based on how much time they have missed from work grades are assined as follows
A - less than 10 hours missed
B - between 10 and 20 hours missed
C - between 20 and 30 hours missed
D - more than 30 hours missed
*/

USE timekeeper;
UPDATE EMPLOYEE
SET standingGrade=(CASE
	WHEN TotHrs < TIME(200000) THEN
		CASE 
			WHEN TotHrs < TIME(100000) THEN 'A'
			ELSE 'B'
		END
    ELSE
		CASE
			WHEN TotHrs < 300000 THEN 'C'
            ELSE 'D'
		END
END);

SELECT EmpID, standingGrade FROM EMPLOYEE
