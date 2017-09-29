SELECT * FROM Orders
SELECT * FROM Ordertype
SELECT * FROM Person
SELECT * FROM PersonType

SELECT * 
FROM Ordertype
SELECT * 
FROM Ordertype
WHERE OrderTypeDescr like 'o%h%'
SELECT * 
FROM Ordertype
WHERE OrderTypeDescr like 'o%h_'
--WHERE OrderTypeDescr = 'o%h_' --incorrect
SELECT * 
FROM Ordertype
WHERE OrderTypeDescr like '_x%o%'

--INSERT INTO Ordertype (OrderTypeDescr,	
--						DateCreated,	
--						DateModified)
--VALUES ('extra extra slow',
--	'2015-11-18 18:32:39.037',	
--	'2015-11-18 18:32:39.037')

SELECT OrderTypeDescr	
		,DateCreated	
		,DateModified
FROM Ordertype
WHERE OrderTypeDescr like '_x%o%'
SELECT * 
FROM Ordertype
WHERE OrderTypeDescr like '%xtra extra%'
SELECT * 
FROM Ordertype
WHERE OrderTypeDescr like '_xtra extra%'

--------------------------------------------------
SELECT OrderTypeDescr, 
		COUNT(OrderTypeDescr)
FROM Ordertype
GROUP BY OrderTypeDescr
HAVING COUNT(OrderTypeDescr) > 0

SELECT COUNT(o.OrderID)
	FROM ORDERS o

SELECT p.FirstName, ot.OrderTypeDescr, COUNT(o.OrderID)
FROM ORDERS o INNER JOIN OrderType ot
	ON o.OrderTypeID = ot.OrderTypeID
	INNER JOIN Person p ON p.PersonID = o.PersonID
GROUP BY p.FirstName , ot.OrderTypeDescr
SELECT p.FirstName, COUNT(o.OrderID)
FROM ORDERS o INNER JOIN OrderType ot
	ON o.OrderTypeID = ot.OrderTypeID
	INNER JOIN Person p ON p.PersonID = o.PersonID
GROUP BY p.FirstName
SELECT p.FirstName, ot.OrderTypeDescr, COUNT(o.OrderID)
FROM ORDERS o INNER JOIN OrderType ot
	ON o.OrderTypeID = ot.OrderTypeID
	INNER JOIN Person p ON p.PersonID = o.PersonID
GROUP BY p.FirstName , ot.OrderTypeDescr
HAVING COUNT(o.OrderID) > 1
--------------------------------------------
SELECT ot.OrderTypeDescr, o.OrderQuantity
FROM Orders o INNER JOIN OrderType ot 
		ON o.OrderTypeID = ot.OrderTypeID
		INNER JOIN Person p ON p.PersonID = o.PersonID
SELECT ot.OrderTypeDescr, o.OrderQuantity
FROM Orders o RIGHT JOIN OrderType ot 
		ON o.OrderTypeID = ot.OrderTypeID
		--LEFT JOIN Person p ON p.PersonID = o.PersonID
WHERE o.OrderQuantity IS NULL
SELECT ot.OrderTypeDescr, o.OrderQuantity --to see all order types that were used
FROM Orders o RIGHT JOIN OrderType ot --use inner join only and not is not null
		ON o.OrderTypeID = ot.OrderTypeID
		--LEFT JOIN Person p ON p.PersonID = o.PersonID
WHERE o.OrderQuantity IS NOT NULL --incorrect usage of sql

SELECT ot.OrderTypeDescr, o.OrderQuantity
FROM OrderType ot LEFT JOIN Orders o 
		ON o.OrderTypeID = ot.OrderTypeID
		WHERE o.OrderQuantity IS NULL
SELECT COUNT(*) AS TotalCount
FROM OrderType ot LEFT JOIN Orders o 
		ON o.OrderTypeID = ot.OrderTypeID
		WHERE o.OrderQuantity IS NULL

-------------------------------------------------




