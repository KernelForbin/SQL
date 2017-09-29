CREATE TABLE "Product"
(
ProductID int PRIMARY KEY IDENTITY(0,1),
ProductDesc VARCHAR(1000)
)
CREATE TABLE "TransactionType"
(
TransactionTypeID int PRIMARY KEY IDENTITY(0,1),
TransactionTypeDesc VARCHAR(1000),
)
CREATE TABLE "Price"
(
PriceID int PRIMARY KEY IDENTITY(0,1),
PriceDesc VARCHAR(1000)
)
CREATE TABLE "ProductType"
(
ProductTypeID int PRIMARY KEY IDENTITY(0,1),
ProductTypeDesc VARCHAR(1000),
)
CREATE TABLE "ProductDept"
(
ProductDeptID int PRIMARY KEY IDENTITY(0,1),
ProductDeptDec VARCHAR(1000)
)
CREATE TABLE "PaymentType"
(
PaymentTypeID int PRIMARY KEY IDENTITY(0,1),
PaymentTypeDesc VARCHAR(1000),
)
CREATE TABLE "Quantity"
(
QuantityID int PRIMARY KEY IDENTITY(0,1),
QuantityTypeDesc VARCHAR(1000),
)
CREATE TABLE "Transaction"
(
TransactionID int PRIMARY KEY IDENTITY(0,1),
ProductID int FOREIGN KEY REFERENCES Product(ProductID),
TransactionDescr VARCHAR(1000),
TransactionTypeID int FOREIGN KEY REFERENCES TransactionType(TransactionTypeID),
PaymentTypeID int FOREIGN KEY REFERENCES PaymentType(PaymentTypeID),
QuantityID int FOREIGN KEY REFERENCES Quantity(QuantityID),
PriceID int FOREIGN KEY REFERENCES Price(PriceID),
)
CREATE TABLE "Order"
(
OrderID int PRIMARY KEY IDENTITY(0,1),
TransactionID int FOREIGN KEY REFERENCES "Transaction"(TransactionID),
ProductID int FOREIGN KEY REFERENCES Product(ProductID),
OrderDescr VARCHAR(1000)
/* CustomerID int FOREIGN KEY REFERENCES Customer(CustomerID),
EmployeeID int FOREIGN KEY REFERENCES Employee(EmployeeID),
MerchantID int FOREIGN KEY REFERENCES Merchant(MerchantID) */
)