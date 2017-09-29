-- ********** DISPLAYS EVERYTHING FROM ALL TABLES **********

select * from PersonType
select * from Person
select * from OrderType
select * from Orders

-- ********** BEGIN EXAMPLE ON: INSERTING INTO TABLE **********

INSERT INTO ORDERTYPE(OrderTypeDescr)
VALUES ('rush'),('overnight'),('ground'),('slow'),('extra slow'), ('free')

INSERT INTO ORDERS
	(PersonID,	
	OrderTypeID
	,OrderQuantity	
	,OrderDate	
	,ShipDate	
	,DeliveryDate)
VALUES (1,1,10,'10-10-2015','11-11-2015','12-12-2015')


-- ********** BEGIN EXAMPLE ON: JOINING TABLES **********

-- INNER returns only matching rows
-- CROSS Catesian roduct
-- LEFT returns matching rows and if no matching rows returns null
-- RIGHT returns matching rows and if no matching rows returns null

SELECT * 
FROM PersonType pt 
	INNER JOIN Person p
	ON pt.PersonTypeID = p.PersonTypeID

SELECT * 
FROM PersonType pt 
	LEFT JOIN Person p
	ON pt.PersonTypeID = p.PersonTypeID

SELECT * 
FROM PersonType pt 
	RIGHT JOIN Person p
	ON pt.PersonTypeID = p.PersonTypeID

WHERE pt.PersonTypeID IS NOT NULL -- same as inner join
--WHERE pt.PersonTypeID IS NULL --correct left or right join
--WHERE pt.PersonTypeID = NULL --incorrect


SELECT p.FirstName -- Selecting by alias.Column
		,p.LastName 
		,pt.PersonTypeDescr
		,o.OrderQuantity
		,o.DeliveryDate
		,ot.OrderTypeDescr

--SELECT TOP 2 p.FirstName -- Selects/displays Top 2 results, same as above by restricts to just top 2 rows
--		,p.LastName
--		,pt.PersonTypeDescr
--		,o.OrderQuantity
--		,o.DeliveryDate
--		,ot.OrderTypeDescr


FROM PersonType pt -- From Table: PersonType, Assign alias pt
	
	INNER JOIN Person p -- PK Person assigned alias p, next line joins FK PersonTypeID (in table PersonType) to PK PersonTypeID (in table Person)
	ON pt.PersonTypeID = p.PersonTypeID -- Continuing the above, FKTableAlias.ID = PKTableAlias.ID
	
	INNER JOIN Orders o -- PK Orders assigned alias o, next line joins FK PersonID to PK PersonID
	ON o.PersonID = p.PersonID -- TableAlias.FK = TableAlias.PK
	
	INNER JOIN OrderType ot
	ON o.OrderTypeID = ot.OrderTypeID



-- ********** BEGIN EXAMPLE ON: COUNT + GROUP BY + HAVING **********

SELECT pt.PersonTypeDescr -- All COUNT/SUM etc commands create a view that only exists AT THAT TIME, does not write to database, only displays information on screen
		,COUNT(p.FirstName) -- No name column
		,COUNT(p.LastName) AS [My Count1] -- Naming
		,COUNT(p.FirstName) 'My Count2' -- System remembers the AS command, still use it for exam/project
FROM PersonType pt
		INNER JOIN Person p
		ON pt.PersonTypeID = p.PersonTypeID
GROUP BY pt.PersonTypeDescr -- GRROUP BY must accompany any COUNT etc statement

HAVING COUNT(pt.PersonTypeDescr) > 1 -- Must come after other criteria

ORDER BY pt.PersonTypeDescr DESC --ASC -- Orders by ASC or DESC alpha/num order




-- ********** BEGIN EXAMPLE ON: WHERE command **********

SELECT p.FirstName
		,p.LastName
		,o.OrderDate
FROM PersonType pt
	INNER JOIN Person p
	ON pt.PersonTypeID = p.PersonTypeID
	INNER JOIN Orders o
	ON o.PersonID = p.PersonID

WHERE (p.FirstName = 'Bob' OR p.FirstName = 'Larry') -- Looking for 'Bob Smith' or 'Larry Smith' that ordered on specified date
		AND p.LastName = 'Smith'
		AND o.OrderDate <= '2015-11-11 00:00:00.000'





-- ********** NOT ON EXAM ********** 
SELECT * 
FROM Person, PersonType

SELECT * 
FROM person , PersonType 
WHERE person.PersonTypeID = PersonType.PersonTypeID


