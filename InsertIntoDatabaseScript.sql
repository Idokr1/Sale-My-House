use SaleMyHouse;

insert into City values (1, 'New York City', 'New York', 'USA')
insert into City values (2, 'San Francisco', 'California', 'USA')
insert into City values (3, 'Buffalo', 'New York', 'USA')
insert into City values (4, 'Yonkers', 'New York', 'USA')
insert into City values (5, 'Rochester', 'New York', 'USA')
insert into City values (6, 'Los Angeles', 'California', 'USA')
insert into City values (7, 'San Diego', 'California', 'USA')
insert into City values (8, 'Sacramento', 'California', 'USA')


insert into Neighborhood values (1, 'Harlem', 1)
insert into Neighborhood values (2, 'SoHo', 1)
insert into Neighborhood values (3, 'Mission Bay', 2)
insert into Neighborhood values (4, 'Fishermans Wharf', 2) 
insert into Neighborhood values (5, 'Downtown', 3)
insert into Neighborhood values (6, 'Larkinville', 3)
insert into Neighborhood values (7, 'Gettu Square', 4)
insert into Neighborhood values (8, 'Northwest Yonkers', 4)
insert into Neighborhood values (9, 'Park Avenue', 5)
insert into Neighborhood values (10, 'South Wedge', 5)
insert into Neighborhood values (11, 'Hollywood', 6)
insert into Neighborhood values (12, 'Downtown Los Angeles', 6)
insert into Neighborhood values (13, 'Mission Beach', 7)
insert into Neighborhood values (14, 'Downtown San Diego', 7)
insert into Neighborhood values (15, 'Old Sacramento', 8)
insert into Neighborhood values (16, 'East Sacramento', 8)


insert into HouseType values (1, 'Single-family')
insert into HouseType values (2, 'Penthouse')
insert into HouseType values (3, 'Apartment')
insert into HouseType values (4, 'Co-Op')
insert into HouseType values (5, 'Townhome')
insert into HouseType values (6, 'Condo')
insert into HouseType values (7, 'Multifamily')
insert into HouseType values (8, 'Semi-Detached')


insert into House values (1, 1, 1, 1700000, 4, 0)
insert into House values (2, 5, 1, 2000000, 6, 1)
insert into House values (3, 8, 2, 500000, 3, 1)
insert into House values (4, 2, 3, 1500000, 5, 1)
insert into House values (5, 7, 3, 1002320, 4, 0)
insert into House values (6, 2, 4, 2100230, 6, 0)
insert into House values (7, 3, 4, 2600000, 7, 1)
insert into House values (8, 1, 5, 2700000, 8, 1)
insert into House values (9, 6, 6, 1554000, 4, 1)
insert into House values (10, 7, 6, 1200000, 4, 1)
insert into House values (11, 2, 7, 800000, 3, 1)
insert into House values (12, 4, 8, 1100000, 5, 1)
insert into House values (13, 1, 10, 2000000, 6, 1)
insert into House values (14, 5, 11, 1250000, 5, 0)
insert into House values (15, 7, 11, 900000, 8, 0)
insert into House values (16, 3, 13, 3000000, 9, 0)
insert into House values (17, 2, 14, 1500000, 6, 0)
insert into House values (18, 1, 15, 990000, 3, 1)
insert into House values (19, 6, 16, 1300000, 4, 1)


insert into Employees values (1, 2, 'John', 'Cena', '1992-10-28', '2017-10-28', '6900 Vermont Ave', 'Los Angeles', 'California', 'USA', '90044', '7602790561')
insert into Employees values (2, 1, 'Adam', 'Smith', '1987-11-18', '2014-11-25', '27 E 1st ST', 'New York City', 'New York', 'USA', '10003', '2125981970')
insert into Employees values (3, 4, 'Dave', 'Bautista', '1969-1-18', '2016-6-15', 'V Villa Terrace', 'San Francisco', 'California', 'USA', '94112', '4089171003')
insert into Employees values (4, 3, 'Rey', 'Mysterio', '1974-12-11', '2018-3-14', '9041 Woodlawn Dr', 'San Diego', 'California', 'USA', '92126', '6194504076')
insert into Employees values (5, 6, 'The', 'Undertaker', '1965-3-24', '2017-5-15', '98-2 B St', 'Buffalo', 'New York', 'USA', '14211', '5859001523')


insert into Sellers values (1, 'Yoram Arbel', '6912 Vermont Ave', 'Los Angeles', 'California', 'USA', '90015', '3254236677', null)
insert into Sellers values (2, 'Avi Nimni', '8041 Woodlawn Dr', 'San Diego', 'California', 'USA', '90215', '3254236427', null)
insert into Sellers values (3, 'Avigdor Cohen', '2299-2201 15th St', 'San Francisco', 'California', 'USA', '90415', '3252346427', null)
insert into Sellers values (4, 'Sharon Davidovich', '5912 Vermont Ave', 'Los Angeles', 'California', 'USA', '90025', '3254213542', null)
insert into Sellers values (5, 'Itzik Zohar',  '3299-3201 15th St', 'San Francisco', 'California', 'USA', '90515', '3532346521', null)
insert into Sellers values (6, 'Moti Levi', '8051 Woodlawn Dr', 'San Diego', 'California', 'USA', '90115', '4124236427', null)
insert into Sellers values (7, 'Eyal Berkovic', '29 E 3st ST', 'New York City', 'New York', 'USA', '10013', '2121251970', null)


insert into Buyers values (1, 'Avigdor Cohen', '2299-2201 15th St', 'San Francisco', 'California', 'USA', '90415', '3252346427', null)
insert into Buyers values (2, 'Yoram Arbel', '6912 Vermont Ave', 'Los Angeles', 'California', 'USA', '90015', '3254236677', null)
insert into Buyers values (3, 'Avi Nimni', '8041 Woodlawn Dr', 'San Diego', 'California', 'USA', '90215', '3254236427', null)
insert into Buyers values (4, 'Eyal Berkovic', '29 E 3st ST', 'New York City', 'New York', 'USA', '10013', '2121251970', null)
insert into Buyers values (5, 'Moti Levi', '8051 Woodlawn Dr', 'San Diego', 'California', 'USA', '90115', '4124236427', null)
insert into Buyers values (6, 'Sharon Davidovich', '5912 Vermont Ave', 'Los Angeles', 'California', 'USA', '90025', '3254213542', null)
insert into Buyers values (7, 'Itzik Zohar',  '3299-3201 15th St', 'San Francisco', 'California', 'USA', '90515', '3532346521', null)


update Sellers set BuyerID = 2 where SellerID = 1
update Sellers set BuyerID = 3 where SellerID = 2
update Sellers set BuyerID = 1 where SellerID = 3
update Sellers set BuyerID = 6 where SellerID = 4
update Sellers set BuyerID = 7 where SellerID = 5
update Sellers set BuyerID = 5 where SellerID = 6
update Sellers set BuyerID = 4 where SellerID = 7


update Buyers set SellerID = 3 where BuyerID = 1
update Buyers set SellerID = 1 where BuyerID = 2
update Buyers set SellerID = 2 where BuyerID = 3
update Buyers set SellerID = 7 where BuyerID = 4
update Buyers set SellerID = 6 where BuyerID = 5
update Buyers set SellerID = 4 where BuyerID = 6
update Buyers set SellerID = 5 where BuyerID = 7


insert into Orders values (1, 1, 1, 6, '2022-1-28') 
insert into Orders values (2, 2, 2, 4, '2018-4-12')
insert into Orders values (3, 5, 3, 7, '2019-4-12')
insert into Orders values (4, 2, 4, 2, '2018-4-12')
insert into Orders values (5, 2, 5, 1, '2021-4-12')
insert into Orders values (6, 4, 6, 3, '2019-3-11')
insert into Orders values (7, 4, 7, 5, '2022-6-9')


insert into [Order Details] values (1, 15, 1300000)
insert into [Order Details] values (2, 1, 1300000)
insert into [Order Details] values (3, 6, 700000)
insert into [Order Details] values (4, 14, 2000000)
insert into [Order Details] values (5, 5, 900000)
insert into [Order Details] values (6, 17, 1300000)
insert into [Order Details] values (7, 16, 3200000)
