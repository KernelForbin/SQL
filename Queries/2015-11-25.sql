SELECT TOP 1 *
FROM Orders

SELECT (1 + 1) * 3
SELECT 'TEST' + ' ' + 'TEST'
SELECT GETDATE() 

SELECT top 1 *
FROM Orders o INNER JOIN Person p 
		ON o.PersonID = p.PersonID
ORDER BY FirstName asc-- ASC --DESC
SELECT top 1 *
FROM Orders o INNER JOIN Person p 
		ON o.PersonID = p.PersonID
ORDER BY FirstName DESC-- ASC --DESC

INSERT INTO PersonType (PersonTypeDescr)
VALUES 
('Owner')
SELECT @@Identity
SELECT * FROM PersonType

DECLARE @MyVar INT
SET @MyVar = 10
--CONVERT(decimal(10,5), CONVERT(varbinary(20), @myval));

PRINT CONVERT (VARCHAR(20), @MyVar) + ' ' + ' And this is my val'
SELECT @MyVar + 10
PRINT 'Statement was successfull'
--------------------------------------------
DECLARE @MyString AS VARCHAR(30)
DECLARE @MyString1 AS VARCHAR(30)
SET @MyString = '2015-10-10 00:00:00.000' 
SET @MyString1 = '2015-09-09 00:00:00.000' 
PRINT @MyString
SELECT DATEDIFF(day,@MyString1,@MyString) AS DiffDate
SELECT DATEDIFF(minute,@MyString1,@MyString) AS DiffDate
SELECT DATEDIFF(day,@MyString,@MyString1) AS DiffDate
SELECT DATEDIFF(SECOND,@MyString,@MyString1) AS DiffDate
------------------
DECLARE @Year int
SET @Year = 1
DECLARE @MyString3 AS DATETIME
SET @MyString3 = '2015-09-09 00:00:00.000' 
SELECT 'year', DATEADD(year,@Year,@MyString3)
SELECT 'year', DATEADD(year,-1,@MyString3)
--------------------------------
DECLARE @MyDate AS DATETIME
SET @MyDate = '2015-09-09 00:00:00.000' 
DECLARE @MyYear int
IF(GETDATE() < @MyDate)
	BEGIN
		PRINT 'yes'
		SET @MyYear= 1
		SELECT 'year', DATEADD(year,@MyYear,@MyDate)
	END
	ELSE
	BEGIN
		PRINT 'no'
		SET @MyYear= -1
		SELECT 'year', DATEADD(year,@MyYear,@MyDate)
	END
----------------------------------------
DECLARE @LtriRtrim AS VARCHAR(20)
SET @LtriRtrim = 'my data'
SELECT @LtriRtrim, LEN(@LtriRtrim)
SELECT LTRIM(RTRIM(@LtriRtrim)), 
LEN(LTRIM(RTRIM(@LtriRtrim)))
------------------------
DECLARE @LtriRtrim1 AS VARCHAR(20)
SET @LtriRtrim1 = '123456789'
SELECT SUBSTRING(@LtriRtrim1,5,4)
SELECT SUBSTRING(@LtriRtrim1,-1,4)
SELECT SUBSTRING(@LtriRtrim1,10,4)
SELECT SUBSTRING(@LtriRtrim1,1,3)
-------------------
DECLARE @FirstName AS VARCHAR(20)
DECLARE @LastName AS VARCHAR(20)
SET @FirstName = 'Bob' 
SET @LastName = 'Smith'
SELECT SUBSTRING(@FirstName,1,1) + '. ' + @LastName AS FNameLName
---------------------------
DECLARE @MyInsert AS VARCHAR(20)
SET @MyInsert = 'Super User'
INSERT INTO PersonType (PersonTypeDescr)
VALUES (@MyInsert)
SELECT @@IDENTITY
SELECT * FROM PersonType
---------------------------
DECLARE @EndUserType VARCHAR(20)
SET @EndUserType = 'Employee1'
IF EXISTS (SELECT PersonTypeID 
			FROM PersonType
			WHERE PersonTypeDescr = @EndUserType)
	BEGIN
		PRINT 'Exists'
	END
	ELSE
	BEGIN
		PRINT 'Does Not'
	END
-----------------------------
DECLARE @EndUserType1 VARCHAR(20)
SET @EndUserType1 = 'E'
IF EXISTS (SELECT PersonTypeID 
			FROM PersonType
			WHERE PersonTypeDescr 
			LIKE SUBSTRING(@EndUserType1, 1,1) + '%' )
	BEGIN
		PRINT 'Exists'
	END
	ELSE
	BEGIN
		PRINT 'Does Not'
	END
	-------------------------
DECLARE @EndUserType2 VARCHAR(20)
SET @EndUserType2 = 'E'
IF NOT EXISTS (SELECT PersonTypeID 
			FROM PersonType
			WHERE PersonTypeDescr 
			LIKE SUBSTRING(@EndUserType2, 1,1) + '%' )
	BEGIN
		PRINT 'Exists'
	END
	ELSE
	BEGIN
		PRINT 'Does Not'
	END
--------------------------------
DECLARE @InsertValue AS VARCHAR(20)
SET @InsertValue = 'My Val'
IF EXISTS (SELECT PersonTypeID 
			FROM PersonType
			WHERE PersonTypeDescr = @InsertValue)
	BEGIN
		DECLARE @MyId INT
		SET @MyId = (SELECT TOP 1 PersonTypeID 
			FROM PersonType
			WHERE PersonTypeDescr = @InsertValue)
		UPDATE PersonType 
		SET PersonTypeDescr = @InsertValue + '1'
		WHERE PersonTypeId = @MyId
		PRINT 'record exists'
	END
	ELSE
	BEGIN
		INSERT INTO PersonType (PersonTypeDescr)
		VALUES (@InsertValue)
		PRINT 'record does not exists'
	END














