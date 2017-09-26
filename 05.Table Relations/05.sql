CREATE TABLE Cities
(
	CityID int Primary Key,
	Name varchar(50)
)
CREATE TABLE Customers
(
	CustomerID int Primary KEY,
	Name varchar(50),
	Birthday date,
	CityID int
	CONSTRAINT FK_CustomersCityID_CitiesCityID
	FOREIGN KEY(CityID) REFERENCES Cities(CityID)
)

CREATE TABLE Orders
(
	OrderId int Primary Key,
	CustomerID int,
	CONSTRAINT FK_OrdersCustomerID_Customers_CustomerID
	FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)
CREATE TABLE ItemTypes
(
	ItemTypeID int Primary Key,
	Name varchar(50)
)

CREATE TABLE Items
(
	ItemID int Primary KEY,
	Name varchar(50),
	ItemTypeID int
	CONSTRAINT FK_ItemsItemTypesID_ItemTypesItemTypeID
	FOREIGN KEY(ItemTypeID) REFERENCES ItemTypes(ItemTypeID)
)
CREATE TABLE OrderItems
(
	OrderId int ,
	ItemID int ,
	CONSTRAINT PK_Order_Items PRIMARY KEY(OrderId,ItemID),

	CONSTRAINT FK_OrdersCustomerID_OrderItemsOrderID
	FOREIGN KEY(OrderID) REFERENCES Orders(OrderId),

	CONSTRAINT FK_OrderItemsItemID_ItemsItemID
	FOREIGN KEY(ItemID) REFERENCES Items(ItemID)
)
