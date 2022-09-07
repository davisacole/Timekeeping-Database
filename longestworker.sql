/*Returns employee who has missed the most hours from work*/
USE timekeeper;

SELECT MAX(TotHrs), EmpID FROM CALENDAR
ORDER BY TotHrs DESC
