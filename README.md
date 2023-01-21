
# Sale My House SQL

This is an assay with Table Schema and ERD Diargram for a real estate company software's Data Base according to client's requirements

  ## ERD
![ERD](/Assets/ERD.png)

## Table Design

![Table Design](/Assets/TableDesign.png)

  

## SQL Script

### Prerequisites for the script
1. Create the database by running the "CreateDatabaseScript.sql" file
2. Add values to the data base by running the "InsertIntoDatabaseScript.sql"
3. Run the Queries of "ProjectQueries.sql"


### Queries
1. `Revenue of the company of each house type grouped by year`
```
select HT.TypeID, TypeName, H.HouseID, year(OrderDate) 'Year', sum(SellingPrice - RequestedPrice) 'Profit'
from HouseType HT, House H, [Order Details] OD, Orders O
where HT.TypeID = H.TypeID
and H.HouseID = OD.HouseID
and OD.OrderID = O.OrderID
and year(OrderDate) = 2022
and (SellingPrice - RequestedPrice) > 0
group by HT.TypeID, TypeName, H.HouseID, year(OrderDate)
```

2. `Display custumers who sold house and bought more expensive house using our company services`
```
select S.SellerID, S.ContactName, RequestedPrice 'CustToCompanyPrice', SellingPrice 'CompanyToCustPrice'
from Buyers B, Sellers S, Orders O, [Order Details] OD, House H
where H.HouseID = OD.HouseID
and OD.OrderID = O.OrderID
and O.SellerID = S.SellerID
and S.BuyerID = B.BuyerID
and SellingPrice > RequestedPrice
group by S.SellerID, S.ContactName, RequestedPrice, SellingPrice
```

3. `Display the Neigberhood with the highest average of sold houses order by Most expensive`
```
select top 1 N.NeighborhoodID, NeighborhoodName, CityName, avg(RequestedPrice) 'AverageSellingPrice'
from City C, Neighborhood N, House H, [Order Details] OD
where C.CityID = N.CityID and N.NeighborhoodID = H.NeighborhoodID and H.HouseID = OD.HouseID
group by N.NeighborhoodID, NeighborhoodName, CityName
order by AverageSellingPrice desc
```

4. `Display the best employee by revenue for each year `
```
with BestEmployee as
	(select year(OrderDate) 'OrderYear',  E.EmployeeID, sum(SellingPrice) 'EmployeeSales'
	from Employees E, Orders O, [Order Details] OD
	where E.EmployeeID = O.EmployeeID and O.OrderID = OD.OrderID
	group by year(OrderDate),  E.EmployeeID)
select distinct BE.OrderYear, round(max(BE.EmployeeSales),2) 'MaxEmployeeSales', E.EmployeeID, E.FirstName, E.LastName
from Employees E Join BestEmployee BE
on E.EmployeeID = BE.EmployeeID
group by BE.OrderYear, E.EmployeeID, E.FirstName, E.LastName
	having max(BE.EmployeeSales) in (select max(EmployeeSales) from BestEmployee group by OrderYear)
order by OrderYear
```

5. `Offer a bigger house to a custumer who bought a house 2 years ago or more in the same city`
```
with Query5 as
	(select B.BuyerID, year(OrderDate) 'OriginalOrderDate', B.ContactName, B.City, NumberOfRooms
	 from City CT, Neighborhood N, House H, [Order Details] OD, Orders O, Buyers B
	 where CT.CityID = N.CityID
	 and N.NeighborhoodID = H.NeighborhoodID
	 and H.HouseID = OD.HouseID
	 and OD.OrderID = O.OrderID
	 and O.BuyerID = B.BuyerID
	 and year(GETDATE()) - year(OrderDate) > 2
	 group by B.BuyerID, year(OrderDate), B.ContactName, B.City, NumberOfRooms)
select Q5.BuyerID, Q5.ContactName, H.HouseID 'OfferedHouseID', Q5.OriginalOrderDate 'OriginalOrderDate', CT.CityName 'BuyingCity', Q5.City 'LivingCity', Q5.NumberOfRooms 'Old House Rooms', H.NumberOfRooms 'Offered House Rooms'
from City CT, Neighborhood N, House H, Query5 Q5
where CT.CityID = N.CityID
and N.NeighborhoodID = H.NeighborhoodID
and H._Availability_ = 1
and CT.CityName = Q5.City
and H.NumberOfRooms > Q5.NumberOfRooms
group by Q5.BuyerID, Q5.ContactName, H.HouseID, Q5.OriginalOrderDate, CT.CityName, Q5.City, Q5.NumberOfRooms, H.NumberOfRooms
order by Q5.BuyerID
```
