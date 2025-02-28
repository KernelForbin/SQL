-- CREATED BY KENNY

CREATE TABLE PersonType
(
	PersonTypeID INT PRIMARY KEY IDENTITY(1,1),
	PersonTypeDescr VARCHAR(30),
	DateCreated DATETIME DEFAULT GETDATE(),
	DateModified DATETIME DEFAULT GETDATE()
)
CREATE TABLE Person
(
	PersonID INT PRIMARY KEY IDENTITY(1,1),
	PersonTypeID INT FOREIGN KEY REFERENCES PersonType (PersonTypeID),
	FirstName VARCHAR(30),
	LastName  VARCHAR(30),
	DOB DATETIME,
	SS CHAR(11),
	DateCreated DATETIME DEFAULT GETDATE(),
	DateModified DATETIME DEFAULT GETDATE()
)
CREATE TABLE OrderType
(
	OrderTypeID INT PRIMARY KEY IDENTITY(1,1),
	OrderTypeDescr VARCHAR(30),
	DateCreated DATETIME DEFAULT GETDATE(),
	DateModified DATETIME DEFAULT GETDATE()

)
CREATE TABLE Orders
(	
	OrderID int PRIMARY KEY IDENTITY(1,1),
	PersonID int FOREIGN KEY REFERENCES Person (PersonID),
	OrderTypeID int FOREIGN KEY REFERENCES OrderType (OrderTypeID),
	OrderQuantity INT,
	OrderDate DATETIME,
	ShipDate DATETIME,
	DeliveryDate DATETIME,
	DateCreated DATETIME DEFAULT GETDATE(),
	DateModified DATETIME DEFAULT GETDATE()
)