---- CREATED BY ME

INSERT INTO PersonType (PersonTypeDescr)
VALUES ('Employee')
INSERT INTO PersonType (PersonTypeDescr)
VALUES 
('Customer')
,('Consultant')
,('Manager')

--UPDATE PersonType
--SET PersonTypeDescr = 'Consultant 1'
--WHERE PersonTypeID = 19

--UPDATE PersonType
--SET PersonTypeDescr = 'Consultant 1'
--WHERE PersonTypeDescr = 'Consultant'


INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (1,'John','Smith','02-03-1800','123-12-1234')

INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (3,'Larry','Dude','02-03-1900','123-12-1234')

INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (1,'Bob','Barry','02-03-1910','123-12-1234')

INSERT INTO Person 
(PersonTypeID, FirstName, LastName, DOB, SS)
VALUES (3,'Marry','James','02-03-1900','123-12-1234','02-03-1900','02-03-1900')

SELECT * 
FROM PersonType



SELECT * 
FROM Person
SELECT FirstName,LastName 
FROM Person

--DELETE FROM PersonType

--DROP TABLE Orders
--DROP TABLE OrderType
--DROP TABLE Person
--DROP TABLE PersonType