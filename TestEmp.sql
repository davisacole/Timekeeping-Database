/*This script is used to store values used when testing certain functions, used instead of server system variables, it will mimic inputs from outside variables such as a card reader used to clock in, etc.*/

USE Timekeeper;
CREATE TABLE TEST(
	TestID int,
    TestDept int,
    TestSect int,
    Testdel int
);
INSERT INTO TEST(TestID, TestDept, TestSect, Testdel)
VALUES 
	(11111,333,2,11212);
/* (SELECT TestID FROM TEST) */
/* (SELECT TestDept FROM TEST) */
/* (SELECT TestSect FROM TEST) */


/*DROP TABLE TEST;*/