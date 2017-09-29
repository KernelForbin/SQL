CREATE TABLE Product
(
	ProductID INT PRIMARY KEY IDENTITY(1,1),
	ProductName VARCHAR(20)
)
CREATE TABLE TransactionType
(
	TransactionTypeID int PRIMARY KEY IDENTITY(1,1),
	TransactionTypeDesc VARCHAR(20),
)
CREATE TABLE Price
(
	PriceID INT PRIMARY KEY IDENTITY(1,1),
	PriceDesc VARCHAR(20)
)
CREATE TABLE ProductType
(
	ProductTypeID INT PRIMARY KEY IDENTITY(1,1),
	ProductTypeDesc VARCHAR(20)
)
CREATE TABLE ProductDept
(
	ProductDeptID INT PRIMARY KEY IDENTITY(1,1),
	ProductDeptDesc VARCHAR(20)
)
CREATE TABLE PaymentType
(
	PaymentTypeID INT PRIMARY KEY IDENTITY(1,1),
	PaymentTypeDesc VARCHAR(20)
)	
CREATE TABLE Quantity
(
	QuantityID INT PRIMARY KEY IDENTITY(1,1),
	QuantityTypeDesc VARCHAR(20)
)
CREATE TABLE Transaction
(
	TransactionID INT PRIMARY KEY IDENTITY(1,1),
	TransactionDescr VARCHAR(20),
	TransactionTypeID int FOREIGN KEY REFERENCES TransactionType(TransactionTypeID),
	PaymentTypeID int FOREIGN KEY REFERENCES PaymentType(PaymentTypeID),
	QuantityID INT FOREIGN KEY REFERENCES Quantity(QuantityID),
	PriceID INT FOREIGN KEY REFERENCES Price(PriceID)
)
CREATE TABLE Order
(
	OrderID INT PRIMARY KEY IDENTITY(1,1),
	TransactionID INT FOREIGN KEY REFERENCES Transaction(TransactionID),
	ProductID INT FOREIGN KEY REFERENCES Product(ProductID),
	OrderDescr VARCHAR(20)
/* CustomerID int FOREIGN KEY REFERENCES Customer(CustomerID),
EmployeeID int FOREIGN KEY REFERENCES Employee(EmployeeID),
MerchantID int FOREIGN KEY REFERENCES Merchant(MerchantID) */
)	