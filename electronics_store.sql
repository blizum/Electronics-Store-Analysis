create database electronics

use electronics

select * from ProductInventory

select * from Products

select distinct [Order_Date_DD_MM_YYYY] from ProductInventory

select [Order_Date_DD_MM_YYYY] from ProductInventory
where [Order_Date_DD_MM_YYYY] is null or [Order_Date_DD_MM_YYYY] = ' '

select distinct [Product_ID] from ProductInventory
order by Product_ID


select * from Products
order by Unit_Price desc

SELECT * FROM ProductInventory
ORDER BY [Order_Date_DD_MM_YYYY]

select [Order_Date_DD_MM_YYYY],
count(product_ID) as TotalProductsOnDate,
sum([Availability]) as TotalAvailabilityOnDate,
sum([Demand]) as TotalDemandOnDate
from ProductInventory
group by [Order_Date_DD_MM_YYYY]

-- Product ID 21 is 7, product ID 22 is 11
update ProductInventory
set Product_ID = 7 where Product_ID = 21

update ProductInventory
set Product_ID = 11 where Product_ID = 22


select * into prod_data from
(select a.[Product_ID], b.[Product_Name], b.[Unit_Price], a.[Order_Date_DD_MM_YYYY],
a.[Availability], a.[Demand] from ProductInventory as a
left join Products as b on a.Product_ID = b.Product_ID) as x

select * from prod_data