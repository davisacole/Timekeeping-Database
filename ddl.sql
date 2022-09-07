/*This script is the Data Definition Language to costruct the tables necessary for the timekeeping database which will be detailed in comments below*/
/*Line 3 is commented out but should be executed on first use if the database has not yet been created*/
/*CREATE DATABASE Timekeeper;*/
USE Timekeeper;

/*Table containing basic information for all employees
the standingGrade value is a grade from A-D representing how much scheduled work time and employee has missed*/
CREATE TABLE EMPLOYEE(
	EmpID int NOT NULL AUTO_INCREMENT,
    Fname Char(20) NOT NULL,
	nameL Char(30) NOT NULL,
	DeptCode int NOT NULL,
	sectionID int NOT NULL,
	TotHrs TIME NOT NULL,
    standingGrade Char NOT NULL,
    PRIMARY KEY(EmpID)
);

/*A table to represent each department as well as how many employees are currently working in each department and how many are on break*/
CREATE TABLE DEPARTMENT (
	DeptCode int NOT NULL,
    DeptName VarChar(50) NOT NULL,
	TotEmp int NOT NULL,
    TotBrk int NOT NULL,
    PRIMARY KEY(DeptCode)
);

/*Contains Department Sections and how long their shifts are*/
CREATE TABLE SECTION (
	SectID int NOT NULL,
    ShftLen double NOT NULL,
    PRIMARY KEY(SectID)
);

/*Contains how much time an Employee has worked and how much scheduled time an employee has missed, this is used to calculate the missed time of each employee and the values are mirrored on the employee table*/
CREATE TABLE CALENDAR (
	EmpID int UNIQUE AUTO_INCREMENT NOT NULL,
	TotHrs time NOT NULL,
	TotChng time NOT NULL,
	FOREIGN KEY(EmpID) REFERENCES EMPLOYEE(EmpID) ON DELETE CASCADE ON UPDATE CASCADE
);

/*Used daily in between the execution of clock in and clock out scripts to time shift lengths, break punch in and out work to pause and unpause this timer*/
CREATE TABLE CLOCK (
	EmpID int UNIQUE AUTO_INCREMENT NOT NULL,
    StrtTmDt datetime NOT NULL,
    EndTmDt datetime NOT NULL,
    ShftLen time NOT NULL,
	TotChng time NOT NULL,
	BrkChng time NOT NULL,
    FOREIGN KEY(EmpID) REFERENCES EMPLOYEE(EmpID) ON DELETE CASCADE ON UPDATE CASCADE
);


ALTER TABLE EMPLOYEE
	AUTO_INCREMENT =  11111;
ALTER TABLE DEPARTMENT;
ALTER TABLE SECTION;
ALTER TABLE CALENDAR
	AUTO_INCREMENT = 11111;
ALTER TABLE CLOCK
AUTO_INCREMENT = 11111;

/*loads predetermined department info*/
INSERT INTO 
	DEPARTMENT (DeptCode, DeptName, TotEmp, TotBrk)
VALUES
	(111, 'Picking', 0, 0),
	(222, 'Packing', 0, 0),
	(333, 'Shipping', 0, 0);

/*loads predetermined section info*/
INSERT INTO
	SECTION (SectID, ShftLen)
VALUES
	(1, 080000),
	(2, 040000);
