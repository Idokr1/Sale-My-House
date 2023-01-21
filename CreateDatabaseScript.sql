CREATE DATABASE SaleMyHouse;

use SaleMyHouse;

create table City  ( 
CityID int primary key,
CityName char(50) not null,
_State_ char(50) not null,
Country char(50) not null
);


create table Neighborhood (
NeighborhoodID int primary key,
NeighborhoodName char(50) not null,
CityID int references City (CityID) not null
);


create table HouseType (
TypeID int primary key,
TypeName char (50) not null
);


create table House (
HouseID int primary key,
TypeID int references HouseType (TypeID) not null,
NeighborhoodID int references Neighborhood (NeighborhoodID) not null,
RequestedPrice int not null,
NumberOfRooms int not null,
_Availability_ bit not null
);


create table Employees (
EmployeeID int primary key,
SpecializeIn int references HouseType (TypeID) not null,
FirstName char(50) not null,
LastName char(50) not null,
BirthDate datetime check (year(getdate()) - year(BirthDate) > 18) not null,
HireDate datetime not null,
_Address_ char(100),
City char(50),
_State_ char(50),
Country char(50),
ZipCode nvarchar(10),
PhoneNumber nvarchar(24),
);


create table Sellers (
SellerID int primary key,
ContactName char(50) not null,
_Address_ char(100) not null,
City char(50) not null,
_State_ char(50) not null,
Country char(50) not null,
ZipCode nvarchar(10),
PhoneNumber nvarchar(24),
);


create table Buyers (
BuyerID int primary key,
ContactName char(50) not null,
_Address_ char(100) not null,
City char(50) not null,
_State_ char(50) not null,
Country char(50) not null,
ZipCode nvarchar(10),
PhoneNumber nvarchar(24),
);


alter table Buyers
add SellerID int references Sellers (SellerID)

alter table Sellers
add BuyerID int references Buyers (BuyerID)


create table Orders (
OrderID int primary key,
EmployeeID	int references Employees (EmployeeID) not null,
SellerID int references Sellers (SellerID) not null,
BuyerID int references Buyers (BuyerID) not null,
OrderDate datetime not null
);


create table "Order Details" (
"OrderID" "int" not null,
"HouseID" "int" not null,
SellingPrice int not null,
CONSTRAINT "PK_Order_Details" PRIMARY KEY CLUSTERED 
	(
		"OrderID",
		"HouseID"
	),
	CONSTRAINT "FK_Order_Details_Orders" FOREIGN KEY 
	(
		"OrderID"
	) REFERENCES "Orders" (
		"OrderID"
	),
	CONSTRAINT "FK_Order_Details_House" FOREIGN KEY 
	(
		"HouseID"
	) REFERENCES "House" (
		"HouseID"
	),
);
