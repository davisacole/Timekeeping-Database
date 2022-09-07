/*This script can be used when creating the database to delete all tables, this should only be used if the databse is corrupt and needs to be rebuilt
all data in the tables will be lost if not backed up*/

USE timekeeper;
ALTER TABLE EMPLOYEE; 
ALTER TABLE DEPARTMENT;      
ALTER TABLE SECTION;
ALTER TABLE CALENDAR
	DROP FOREIGN KEY calendar_ibfk_1;
ALTER TABLE CLOCK
	DROP FOREIGN KEY clock_ibfk_1;
DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS DEPARTMENT;
DROP TABLE IF EXISTS SECTION;
DROP TABLE IF EXISTS CALENDAR;
DROP TABLE IF EXISTS CLOCK;