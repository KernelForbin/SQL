-- CREATED BY KENNY

----------------------CREATING DATA TYPES----------------------
INSERT INTO PersonType (PersonTypeDescr)
VALUES 
('Customer')
,('Consultant')
,('Manager')
,('Employee')


----------------------UPDATING----------------------
UPDATE PersonType
SET PersonTypeDescr = 'Alter By ID Test'
WHERE PersonTypeID = 2

UPDATE PersonType
SET PersonTypeDescr = 'Alter By Desc Test'
WHERE PersonTypeDescr = 'Consultant'



----------------------INSERTING----------------------
INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (1,'John','Smith','02-03-1800','123-12-1234')

INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (2,'Larry','Jackson','09-30-1955','103-10-0034')

INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (2,'Bob','Jones','04-04-1944','113-15-1494')


----------------------SELECTION/DISPLAYING----------------------
SELECT * 
FROM PersonType

SELECT * 
FROM Person

SELECT FirstName,LastName 
FROM Person

----------------------DELETING DATA AND DROPPING TABLES----------------------

--DELETE FROM PersonType

--DROP TABLE Orders
--DROP TABLE OrderType
--DROP TABLE Person
--DROP TABLE PersonType