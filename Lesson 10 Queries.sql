use Northwind


select FirstName ,
       LastName,
	   FirstName +' '+ LastName as 'Full Name',
	   FirstName +' '+ LastName as [Full Name],
	    FirstName +' '+ LastName as "Full Name",
		    FirstName +' '+ LastName  Full_Name
from   employees

select FirstName,
       LastName,
	   BirthDate,
	   BirthDate + 7 as [b-Date plus 7 dayes]
from   employees

select ProductName,
       UnitPrice,
	   UnitPrice * 0.1 as [Tax],
	   UnitPrice * 1.1 as [UnitPrice Plus Tax]
from Products

select distinct Country
from Employees


select  FirstName ,
        Country , 
        City
from    Employees
order by 1 desc, 2


select ProductName,
       UnitPrice,
	   UnitPrice * 0.1 as [Tax],
	   UnitPrice * 1.1 as [UnitPrice Plus Tax]
from Products
order by 4

-- Home Work
--==========

--Question 1--
Select e.FirstName + ' ' + e.LastName as Full_Name
from Employees e;

--Question 2
select distinct City
from Customers;

--This is a comment
/*This is a large text
This is a large text
This is a large text
This is a large text
*/



--Question 3--
select
	  ProductID,
	  ProductName,
	  UnitPrice,
	  UnitPrice * 0.0516 as [Tax],
	  UnitPrice + UnitPrice * 0.0516 as [Unit Price Plus Tax],
	  UnitPrice * 1.0516[Unit Price Plus Tax],
	  UnitsInStock,
	  UnitsOnOrder,
	  UnitsInStock - UnitsOnOrder as [Units Availalbe]
from Products
Order by UnitPrice asc;

select top 10  *
from Products
Order by UnitPrice asc

select  top 3 *
from Products
order by UnitPrice desc



-- Top
--******--
SELECT  TOP 10 * FROM products
SELECT  TOP 10 Percent  * FROM products


------------------------------------------------------------------
------------------------------------------------ Where --------------------------------------
/*Lesson 2*/
--==========

-- Where one simple condition 
SELECT    ProductName ,
		 UnitsInStock
FROM     Products
where	 UnitsInStock != 10
order by UnitsInStock 


-- Where one simple condition 
SELECT *
FROM Employees
WHERE not City = 'London'


-- All product that has unit price not bigger then 21
SELECT *
FROM   Products
where  unitprice < 21

SELECT *
FROM   Products
where  unitprice <= 20


SELECT *
FROM   Products
where  unitprice !< 20


select *
from Employees
where region is not null


--Using Not
select *
from Products
where  unitprice = 21

select *
from Products
where  unitprice != 21

s
select *
from Products
where not unitprice = 21

select firstname,
	   Region
from   Employees
where  region = ''


-- Like Examples:
select *
from Employees
where FirstName  like 'N_n%'
order by FirstName , 
         LastName



select *
from Employees
where firstname like '[^a-s]%'

--Like
--Find any employee that his/her first name starts with “A”
select *
from Employees
where firstname like 'A%'

--Find any employee that his/her first name apears 'an'

select *
from Employees
where firstname like '%an%'

--Find any employee that his/her first name have 't' in the second position.
select *
from Employees
where firstname like '_t%'


--Null
select *
from Customers
where Region is null 
--and  Region is not null 


--Between
select *
from Products
where UnitPrice   between 20 and 60


select *
from Employees
where HireDate between '1992-04-01 00:00:00.000' and '1993-01-02 00:00:00.000'


select *
from products
where UnitsInStock <25 or UnitsInStock > 30


--- Lesson 2 , Example of using Between And 
SELECT ProductName , UnitsInStock
FROM Products
where UnitsInStock Not BETWEEN 26 AND 30    


SELECT ProductName
FROM Products
WHERE ProductName BETWEEN 'Alice' AND 'Chang'


select *
from Products
where ProductID not in (1,2,3)

select *
from Employees
where FirstName in ('Anne', 'Laura')

select *
from Employees
where FirstName = 'Anne'
and    FirstName = 'Laura'




-- More then one condition

-- Or Example
select FirstName , 
	   City	
from Employees
where city = 'London'
or    FirstName = 'Nancy'

/*
         HomeWork Lesson 2:
		 ==================
*/

--1. הציגו את שלושת הפריטים היקרים בטבלת מוצרים

select top 3 *
from Products
order by UnitPrice desc

--2. הציגו את שלושת העובדים הצעירים ביותר, מטבלת עובדים.

select top 3 *
from Employees
order by BirthDate desc

--3. הציגו את כל הרשומות מטבלת [order details] שבהן הכמות שנמכרה גדולה מ – 50 לא כולל 50

select *
from [Order Details]
where Quantity > 50

--4. הציגו את כל הלקוחות מגרמניה או ספרד
select * 
from Customers
where Country in ('Germany ','Spain') 

select * 
from Customers
where Country = 'Germany '
OR Country = 'Spain'


--5. הצג מטבלת Employees את שמו הפרטי של העובד, שם משפחתו , ותאריך לידתו עבור העובדים אשר מספר העובד שלהם לא שווה לערכים 4 , 5 , 7

SELECT FirstName,
       Lastname,
	   BirthDate 
from Employees
where EmployeeID  not in  (7, 5, 4 )

SELECT FirstName,
       Lastname,
	   BirthDate 
from  Employees
where EmployeeID  <> 7
or    EmployeeID  <> 5 
or    EmployeeID  != 4



--6. הצג מטבלת Customers את שם החברה ומדינתה , עבור החברות שהאות האחרונה בשמם ה 'a'-
select CompanyName,
       Country
from Customers
where CompanyName like '%a'

--7. הצג מטבלת Products את שם המוצר ומספר הקטגוריה שלו , עבור המוצרים שבשמם האות 'a 'היא אות אחת לפני הסוף

select ProductName,
       CategoryID
from Products
where ProductName like '%a_'



/*
הציגו את שלושת המוצרים היקרים ביותר, בתנאי ששייכים לקטגוריה 2, 5 או 8
 המוצר מסתיים ב g,d  או x
 */

select top 3 *
from Products
where CategoryID in (2,5,8)
and  ProductName like '%g'
or ProductName like '%d'
or ProductName like '%x'
order by UnitPrice desc


select top 3 *
from Products
where CategoryID in (2,5,8)
and  ProductName like '%[g,d,x]'
order by UnitPrice desc






/*
    Lesson 3:
	=========
*/
-- חזרה
SELECT ProductName as "Product Name",
	  UnitsInStock,
	  UnitsOnOrder
FROM  Products
where UnitsInStock -10  > UnitsOnOrder

SELECT *
FROM Orders
WHERE  ShippedDate > RequiredDate 

SELECT ProductName
FROM Products
WHERE ProductName BETWEEN 'Alice' AND 'Chang'

SELECT *
FROM Orders
WHERE OrderDate not BETWEEN '1996-07-01' AND '1996-07-31'

--סדר קדימויות
 --- combine more then one condition , the importance of the proccessor:
select *
from Employees
where 2 = 1 
and   (1 = 1 
or    1 = 1)



 -- vs
select *
from Employees
where 1 = 2 
and  ( 1 = 1 
or    1 = 1)


SELECT *
FROM   products
WHERE  UnitPrice > 30
and    SupplierID = 1 
OR     SupplierID = 3
or     UnitsInStock >30

SELECT *
FROM   products
WHERE  UnitPrice > 30
and    (SupplierID = 1 
OR     SupplierID = 3)
or     UnitsInStock >30

-- Where is #7?

select  ProductID,
       SupplierID ,
       UnitsInStock,
	   UnitPrice
from Products
where ProductID = 7

---------------------------------------------------------------------------------
/***********            Joins ***************************************************/

-- Full Outer Join (מכפלה קרטזית)
select CategoryName , ProductName
from Products,--77 recoreds
	 Categories -- 8 records
order by CategoryName



--Inner Join Example
select    Categories.CategoryName ,
          Products.ProductName,
		  Products.CategoryID
from      Products,
	      Categories 
where     Products.CategoryID = Categories.CategoryID
order by  CategoryName


--- Inner Join old fashion way (Not Popular)
select    C.CategoryName ,
          p.ProductName,
		  p.CategoryID
from      Products P,
	      Categories C 
where     C.CategoryID = P.CategoryID 
order by  C.CategoryName

--- Inner Join moderen way 
select    CategoryName ,
          ProductName,
		  Categories.CategoryID
from      Categories  inner join Products 
on        Categories.CategoryID = Products.CategoryID  
order by  Categories.CategoryName



select    C.CategoryName ,
          p.ProductName,
		  p.CategoryID
from      Categories C inner join Products P
on        C.CategoryID = P.CategoryID  
order by  C.CategoryName


-- Inner Join Supplier and Products
select s.CompanyName,
       p.ProductName
from   Suppliers s  inner join Products p
on     s.SupplierID = p.SupplierID



select e.FirstName+ ' '+ e.LastName as [Full Name],
	   o.OrderDate
from Employees e inner join orders o
on   e.EmployeeID = o.EmployeeID
order by e.FirstName



--What doing this query??
select  p.CategoryID,
		p.ProductName , 
	   c.CategoryName
from products p inner join Categories c
on p.CategoryID = c.CategoryID
where p.CategoryID in (1,2,3)
order by c.CategoryID, p.ProductName 




--Combine more then two tables 
select c.CategoryName,
       s.SupplierID,
       p.ProductName 
from products p inner join Categories c
on p.CategoryID = c.CategoryID
inner join Suppliers S
on   S.SupplierID = p.SupplierID




-- End Of lesson 3
--=================

--HomeWork (Lesson 3)


--1.     הציגו את רשימת הקטגוריות והמוצרים (עמודת שם קטגוריה ועמודת שם מוצר)

--שיטה חדשה
select p.ProductName,
       c.CategoryName
from Categories c inner join Products p
on p.CategoryID=c.CategoryID

--שיטה ישנה

select p.ProductName,
       c.CategoryName
from Categories c ,
      Products p
where p.CategoryID=c.CategoryID

--2.     הציגו את רשימת הלקוחות וההזמנות שלהם (שם חברה, מספר הזמנה)

--שיטה חדשה

select s.CompanyName,
       od.OrderID
from Suppliers s inner join Products p
on s.SupplierID=p.SupplierID
inner join [Order Details] od
on od.ProductID=p.ProductID

--שיטה ישנה
select s.CompanyName,
       od.OrderID
from Suppliers s,
     Products p,
	 [Order Details] od 
where s.SupplierID=p.SupplierID
and
 od.ProductID=p.ProductID

 --3.     הציגו את רשימת שמות הקטגוריות, וליד כל קטגוריה הציגו את שמות הספקים (suppliers) שמספקים מוצרים בקטגוריה הזאת.
 
 --שיטה חדשה
 select c.CategoryName,
        su.CompanyName,
		su.SupplierID
 from Categories c inner join Products p
 on c.CategoryID= p.CategoryID
 inner join Suppliers su
 on su.SupplierID=p.SupplierID
 
 --שיטה ישנה
  select c.CategoryName,
        su.CompanyName,
		su.SupplierID
 from Categories c,
      Products p,
	  Suppliers su 
 where c.CategoryID= p.CategoryID
and  su.SupplierID=p.SupplierID

--4.     הצג את מספר ההזמנה מתוך טבלת orders ואת שם החברה של הלקוח מתוך טבלת Customers , עבור החברות ששמן מתחיל באות 'a'

--שיטה חדשה
 select o.orderid,
       cus.CompanyName
 from Customers cus  inner join orders o 
 on cus.CustomerID =o.CustomerID
 where  cus.CompanyName like 'a%'

 --שיטה ישנה

 select o.orderid,
        cus.CompanyName
 from Customers cus,
       orders o 
 where cus.CustomerID =o.CustomerID
and  cus.CompanyName like 'a%'

--5.      הצג מתוך טבלת region את תיאור התחום (RegionDescription )ומתוך טבלת Territories  את תיאור האיזור (TerritoryDescription)

--שיטה חדשה
select reg.RegionDescription, 
       ter.TerritoryDescription
from Region reg inner join Territories ter
on  reg.RegionID=ter.RegionID

--שיטה ישנה
select reg.RegionDescription, 
       ter.TerritoryDescription
from Region reg,
     Territories ter
where reg.RegionID=ter.RegionID



--שאלת בונוס - הציגו את שמות המוצרים ולידם את שמות הלקוחות (companyname)  שרכשו אותם.
-- שיטה חדשה
select p.productname, 
       cus.ContactName
from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join orders o
on od.OrderID=o.OrderID
inner join Customers cus
on o.CustomerID= cus.CustomerID

--שיטה ישנה

select p.productname,
       cus.ContactName
from Products p,
     [Order Details] od,
	 Orders o,
	 Customers cus
where p.ProductID=od.ProductID
and od.OrderID=o.OrderID
and o.CustomerID= cus.CustomerID
     
 --תרגילים בנושא Where – סדר קדימויות
 SELECT *
 FROM   products
 WHERE  UnitPrice > 30
 and    SupplierID = 1
 OR     SupplierID = 3
 or     UnitsInStock >30

 
SELECT*
FROM   products
WHERE  UnitPrice > 30
and    (SupplierID = 1
OR     SupplierID = 3)
or     UnitsInStock >30
 

select SupplierID,
	   UnitsInStock 	
from Products  p
where p.ProductID = 7

-- lesson 4 :
--===========

-- Employee and his territory
select  e.FirstName+' '+e.LastName fullname , t.TerritoryDescription
from Employees e inner join EmployeeTerritories et
on   e.EmployeeID = et.EmployeeID
inner join Territories T
on et.TerritoryID = t.TerritoryID
order by fullname ,  t.TerritoryDescription


select  e.FirstName+' '+e.LastName fullname, 
	   t.TerritoryDescription
from Employees e inner join EmployeeTerritories et
on   e.EmployeeID = et.EmployeeID
inner join Territories t
on   et.TerritoryID = t.TerritoryID
where e.FirstName like 'an%'
order by 2,1


-- Challenge!!!
-- how many tables are connected here?
select  distinct t.TerritoryDescription	 
from  Territories T inner join EmployeeTerritories ET
on    t.TerritoryID = et.TerritoryID
inner join Employees E
on    ET.EmployeeID = E.EmployeeID
inner join Orders O
on   E.EmployeeID = O.EmployeeID
inner join [Order Details] od
on  o.OrderID = od.OrderID
inner join Products P
on  od.ProductID = od.ProductID
inner join Categories C
on  p.CategoryID = C.CategoryID
where c.CategoryName = 'SeaFood'
and year(OrderDate) = '1996'
order by 1



--inner join
Select c.customerid,
	   o.OrderID
From   customers c  inner join orders o
On     c.customerid = o.customerid
order by OrderID

---Left join
Select c.customerid,
	   o.OrderID
From   customers c left outer join orders o
On     c.customerid = o.customerid
order by OrderID

--right join
Select c.customerid,
	   o.OrderID
From   orders o  right outer join customers c 
On     c.customerid = o.customerid
--where  o.OrderID is null
order by OrderID


-- Self Join
select Emp.FirstName + ' '+emp.LastName as [Employee Full Name],
	   Man.FirstName + ' '+Man.LastName as [Manager Full Name]
from Employees Emp left join Employees Man
on   emp.ReportsTo = Man.EmployeeID

--cross Join
Select c.customerid,
	   o.OrderID
From   customers c  cross join orders o
order by OrderID


/*******  Functions Scalar */

-- String Function Examples

select lower( FirstName) as "Lower First Name",
	   len(FirstName) as "length of first name"
from Employees


select FirstName + ' ' +LastName as "Full Name",
	   upper(FirstName + ' ' +LastName) as "Upper Full Name",
	   lower(FirstName + ' ' +LastName) as "Lower Full Name"	   
from   Employees


select FirstName + ' ' +LastName as "Full Name",
	   upper(FirstName + ' ' +LastName) as "Upper Full Name",
	   lower(FirstName + ' ' +LastName) as "Lower Full Name"
from   Employees

select '                              abc',
	   ltrim( '                              abc')



--Example of string functions
select  LastName, 
        REPLACE(LastName , 'a' ,'$') as 'New Last Name'
from Employees


-- Date examples
select GETDATE(),
	   year ( GETDATE() )


select year(GETDATE()) - year(e.BirthDate)
from Employees e


-- End Of lesson 4
--=================
--Home Work Lesson 4
SELECT prd.ProductID,
       ctg.[Description],
	   spr.Country
FROM Products prd INNER JOIN Categories ctg
ON prd.CategoryID = ctg.CategoryID
INNER JOIN Suppliers spr
ON prd.SupplierID = spr.SupplierID
WHERE spr.Country LIKE 'A%';

SELECT cst.CompanyName,
       ord.OrderID
FROM Customers cst LEFT OUTER JOIN  Orders ord
ON cst.CustomerID = ord.CustomerID;

SELECT cst.CompanyName,
       ord.OrderID
FROM Customers cst LEFT OUTER JOIN  Orders ord
ON cst.CustomerID = ord.CustomerID
WHERE ord.OrderID IS NULL;

SELECT TOP 3 emp.FirstName + ' ' + emp.LastName AS [EmployeeName],
	   man.FirstName + ' ' + man.LastName AS [Manager],
	   emp.HireDate
FROM Employees emp LEFT OUTER JOIN Employees man
ON   emp.ReportsTo = man.EmployeeID
ORDER BY emp.HireDate asc;

SELECT LOWER(emp.FirstName) AS [Lower First Name],
       UPPER(emp.LastName) AS UpperLastName,
	  -- LOWER(emp.FirstName) + ' ' + UPPER(emp.LastName) +' '+ cast(emp.EmployeeID as varchar(2)) as [Full Name emp ID],
	   CONCAT(emp.EmployeeID,' ', LOWER(emp.FirstName), ' ', UPPER(emp.LastName)) AS Concatenated, --סטפן
	--   YEAR(GETDATE()) - YEAR(emp.BirthDate) AS Age,
	   DATEDIFF(yy, BirthDate, getdate()) AS AGE, 
	--   ISNULL(emp.Region, 'No Region') AS RegionUpdated 
	   REPLACE(Region, 'NULL', 'No Region') AS UpdatedRegion
FROM Employees emp

     

/********************************************************************************************************************/
/*
       Lesson 5:
	   =========
*/



select DATEDIFF(YYYY,'1992-01-01','1994-04-01')
SELECT DATEADD(month, 1, '2006-08-31');

-- Date Function
select orderdate,
	   FORMAT (orderdate , 'd', 'en-gb' ) AS 'Great Britain English Result',
       YEAR(orderdate) as "Year" ,
	   month(orderdate) as "Month",
	   day(orderdate),
	   DATENAME(dw,orderdate)	   
from   Orders



-- Numeric Functions

 SELECT CEILING(8.4) 

 select ProductName,
       UnitPrice ,
	   UnitPrice * 1.17 as "UnitPrice+ TaX",
	   round(UnitPrice * 1.17,3) as "UnitPrice+ TaX"
 from Products

 -- Arithatic Functions
select ProductName ,
	   UnitPrice,
	   UnitPrice * 0.17  as "Tax",
	   format(UnitPrice * 0.17,'N2')  as "Tax",
	   CEILING(UnitPrice * 0.17) as "Tax Ceiling",
	    CEILING( UnitPrice * 1.17) as "Unit Price plus Tax plus 1.17" 
from Products



-- Convert Functios
select e.FirstName +' '+ cast  (e.EmployeeID as nvarchar)
from Employees e


--Convert Exaples:
select convert(char(12),birthdate, 101),
	   convert(char(12),birthdate, 102),
	   convert(char(12),birthdate, 103),
	   convert(char(12),birthdate, 104),
	   convert(char(12),birthdate, 105),
	   convert(char(12),birthdate, 106),
	   convert(char(12),birthdate, 107)
from employees

SELECT CONVERT(int, 14.85);
SELECT CONVERT(float, '14.85');
SELECT CONVERT(varchar, 15.6);
SELECT 'The Convertion is '  + CONVERT(varchar(4), 15.6) 
SELECT CONVERT(varchar(10), 15.6);
SELECT CONVERT(datetime, '2014-05-02');

-- Cast Examples:
select 14.85 + 'Is a Value'
select CAST(14.85 AS varchar)  + ' Is a Value'

SELECT CAST(14.85 AS int) 

select CAST(14.85 AS int)*7.65
SELECT CAST(14.85 AS float)*7.65

SELECT CAST(15.6 AS varchar(4));

select '15.6'*7.25 
SELECT CAST('15.6' AS float) * 7.25 

SELECT CAST('2014-05-02' AS datetime);

-- Substring
select substring ('Elad Sella',1,CHARINDEX(' ', 'Elad Sella') -1 )

select c.CustomerID , isnull(region,'No regions')
from Customers c

SELECT CHARINDEX(' ', 'Elad Sella') AS MatchPosition




/**** Group Functions       ****/

select avg(UnitPrice) as [Average of unit price]
from Products

select sum(UnitPrice)as [Summary of unit price]
from Products

select sum(UnitPrice) as [Summary of unit price]
from Products

select EmployeeID
from Employees 
where city = 'London'

select 'Stam Mashehu' , EmployeeID
from Employees 
where city = 'London'

select 1


select distinct customerid
from Orders
order by customerid asc

select count(distinct customerid) as 'num of customers'
from orders

select max(UnitPrice)
from products


-- Summaries of Unit price 
select sum(P.UnitPrice) as [Sum Unit Price], 
	   min(P.UnitsInStock) as [Min Units in Stock ], 
	   max(P.UnitPrice) as [Max Unit Price ], 
	   count(p.UnitPrice ) as [Count Unit Price], 
	   avg(P.UnitPrice) as [Avg Unit Price]
from    Products P


-- Group By
SELECT e.city,
	  count(*) as "num of employees"
FROM Employees e 
GROUP BY  e.City
order by 2 


-- Group By two level
SELECT e.Country,
	   e.city,
	  count(*) as "num of employees"
FROM Employees e 
GROUP BY  e.Country,
		  e.City
order by 3

select --o.OrderDate,
       C.City,
       count(*)
from Customers c inner join Orders O
on    c.CustomerID = o.CustomerID
group by-- o.OrderDate,
       C.City





-- Unit price per category (using joins)
select C.CategoryName , 
       min(P.UnitPrice) as [Summary of unit Price]
from   Categories C inner join Products P
on     C.CategoryID = P.CategoryID
group by C.CategoryName


select t.TerritoryDescription , 
        count(*)
from  Territories t inner join EmployeeTerritories et
on    t.TerritoryID = et.TerritoryID
inner join Employees e
on    e.EmployeeID = et.EmployeeID
group by t.TerritoryDescription
order by t.TerritoryDescription

select e.FirstName ,
       count(t.TerritoryDescription) 
from  Territories t inner join EmployeeTerritories et
on    t.TerritoryID = et.TerritoryID
inner join Employees e
on    e.EmployeeID = et.EmployeeID
group by e.FirstName
order by e.FirstName


select e.City
from Employees e
group by e.City
having count(*) >=3



-----------------------------------------------------------------------------------
--Having
-- Unit price per category (using joins)
select   C.CategoryName , 
         sum(P.UnitPrice) as [Summary of Unit Price Per Category]
from     Categories C inner join Products P
on       C.CategoryID = P.CategoryID
where    C.CategoryName like'%a%'
group by C.CategoryName
having   sum(P.UnitPrice) >= 300
order by C.CategoryName


SELECT city,
	   count(*) AS "num of employee" 
FROM Employees
GROUP BY City
HAVING count(*)>=2

-- Example of full command
select o.CustomerID,
	   count(*) as "num of order" 
from orders o 
WHERE o.OrderDate >='01/01/1998'
GROUP BY o.CustomerID
HAVING count(*)>=5
ORDER BY o.CustomerID


-- Example of full command with joins
select c.CompanyName,
	   count(*) as "num of order" 
from orders o inner join customers c
on  o.CustomerID = c.CustomerID
WHERE o.OrderDate >='01/01/1998'
GROUP BY c.CompanyName
HAVING count(*)>=5
ORDER BY c.CompanyName


/*
1.	הצגת ה – CustomerID וגם את ציון מספר ההזמנות.
של כל הלקוחות שביצעו יותר מ- 5 הזמנות משנת 1998 ואילך. הנתונים המוחזרים של מספר ההזמנות יוצגו במיון עולה
*/

select o.CustomerID,
       count(*) as "Count of Orders per Customer"
from orders O
WHERE YEAR(O.OrderDate) >= 1998
group by o.CustomerID
having COUNT(*) >5
ORDER BY 2

--Homework Lesson 5:
--=================
--1. 
SELECT MAX(UnitPrice) AS [Highest Price],
       MIN(UnitPrice) AS LowestPrice,
	   AVG(UnitPrice) AS AveragePrice,
	   SUM(UnitPrice) AS SumOfPrices,
	   SUM(UnitsInStock) AS SumOfItemQuan
FROM Products;

--2.
SELECT ctg.CategoryName,
       MAX(prd.UnitPrice) AS CategoryHighestPrice,
       MIN(prd.UnitPrice) AS CategoryLowestPrice,
	   AVG(prd.UnitPrice) AS CategoryAveragePrice
FROM Products prd INNER JOIN Categories ctg
ON prd.CategoryID = ctg.CategoryID
GROUP BY ctg.CategoryName
ORDER BY  1;

--3.
SELECT COUNT(*) AS CustomerAmount, 
       City,
       Country
FROM Customers
GROUP BY City,
         Country
ORDER BY 1 DESC;


SELECT City,
       COUNT(*) AS CustomerAmount
FROM Customers
GROUP BY City
ORDER BY 1 DESC

SELECT country,
       COUNT(*) AS CustomerAmount
FROM Customers
GROUP BY country
ORDER BY 1 DESC;


SELECT country,
       city,
       COUNT(*) AS CustomerAmount
FROM Customers
GROUP BY country,
         city
ORDER BY 1 DESC;

--4.
SELECT COUNT(cst.CustomerID) AS AmountOfOrders,
       cst.City,
	   cst.CompanyName
FROM Customers cst INNER JOIN Orders ord
ON cst.CustomerID = ord.CustomerID
WHERE cst.city in ('London',
                    'Paris',
					'Berlin',
					'Rio de Janeiro')
--WHERE cst.City = 'London' OR cst.City = 'Paris' OR cst.City = 'Berlin' OR cst.City = 'Rio de Janeiro'
GROUP BY cst.City,
         cst.CustomerID,
		 cst.CompanyName
ORDER BY 1 DESC;



select s.City,
       count(s.*),
	   count(o.*)
from  customers s inner join orders O
on    s.CustomerID = O.CustomerID
where s.City in ('Rio de Janeiro',
                 'Berlin',
				  'Paris',
				  'London')
group by s.City



select p.CategoryID,
       max(p.UnitPrice) as [Max Unit Price]
from   products p
group by p.CategoryID
having   max(p.UnitPrice) >100










--5.
SELECT MAX(prd.UnitPrice) AS MaxSmallerThan4,
       ctg.CategoryName
FROM Products prd INNER JOIN Categories ctg
ON prd.CategoryID = ctg.CategoryID
GROUP BY ctg.CategoryName	
HAVING MAX(prd.UnitPrice) > 4
ORDER BY 1 DESC; 

--6.
SELECT emp.FirstName,
       COUNT(*) AS TotalOrders,
	   MAX(ord.OrderDate) AS LatestOrderDate
FROM Employees emp INNER JOIN Orders ord
ON emp.EmployeeID = ord.EmployeeID
GROUP BY emp.FirstName
HAVING COUNT(*) > 100
ORDER BY 2 DESC;

--7. 
SELECT ord.CustomerID,
       COUNT(*) AS NumberOfOrders
FROM Orders ord
where OrderDate>='01/01/1998'
--where year(OrderDate)>=1998
GROUP BY ord.CustomerID
HAVING COUNT(*) > 5
ORDER BY COUNT(*);

/*
  Lesson 6
  ========
*/
 -------------------------------------------------------
/************     Sub Queries ************************/

/*
   Using of Subqueries Class
   ==========================
*/

-- מצא את כל המוצרים שמחירם גדול או שווה למחירו של מוצר מספר 2 
-- טיפ , מצא קודם את כל מחירו של מוצר מספר 2, שמור אותו בצד ואז בצע שליפה נוספת מול המחיר ששמרת

-- First ( write the sub query)
SELECT p.UnitPrice
FROM Products p
WHERE p.productid = 2 ---19.00

-- Second ( write the main query with the result of the sub-query)
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice>= 19

-- Third ( Combine)
SELECT UnitPrice
FROM Products
WHERE productid <= (SELECT UnitPrice
					FROM Products
					WHERE productid = 2)

--מצא את כל העובדים שתאריך ההעסקה שלהם הוא מאוחר מתאריך ההעסקה של רוברט קינג
--- First find the hiredate of Robert King
select E.HireDate
from   Employees E
where  E.FirstName = 'Robert' and E.LastName = 'King' --1994-01-02 00:00:00.000

-- Second , Find all employees that their hiredate is bigger/later then 1994-01-02 00:00:00.000
select E.FirstName + ' ' + e.LastName as [Full Name] 
from   Employees E
where  e.HireDate > '1994-01-02 00:00:00.000'

--Third , Combine
select E.FirstName + ' ' + e.LastName as [Full Name] ,HireDate
from   Employees E
where  e.HireDate > (
                    select E.HireDate
					from   Employees E
					where  E.FirstName = 'Robert' and E.LastName = 'King'
					)

--Steven Buchanan
select E.HireDate
from   Employees E
where  E.FirstName = 'Steven' and E.LastName = 'Buchanan'      --1993-10-17 00:00:00.000

select E.FirstName + ' ' + e.LastName as [Full Name] 
from   Employees E
where  e.HireDate > '1993-10-17 00:00:00.000'

select E.FirstName + ' ' + e.LastName as [Full Name] 
from   Employees E
where  e.FirstName >= (select e.FirstName 
                     from   Employees E
                     where  E.FirstName = 'Steven' and E.LastName = 'Buchanan' 
                     )

-- Sub Query with IN
-- מצא את כל המוצרים שהכמות במלאי נמצאת בתוך המוצרים שהקטגוריה שלהם היא 5
-- Find all product that theit unit in stock = 5
select UnitsInStock
from Products
where CategoryID = 5

/* result 
104,61,26,38,21,36,22
*/


select p.ProductID,
       p.ProductName ,
	   UnitsInStock
from   Products P
where  p.UnitsInStock  in (select UnitsInStock
							from    Products
							where   CategoryID = 5)


select p.CategoryID --1
from    Products p
where   p.ProductName = 'Chai'

select *
from Products p
where p.CategoryID = (select p.CategoryID --1
						from    Products p
						where   p.ProductName = 'Chai'
						)
and p.ProductName <> 'Chai'	

select *
from Products p
where p.CategoryID = 1
and p.ProductName <> 'Chai'	


---------------------------------------------------------------
--Same question with two diffrent products

select p.CategoryID --1,2
from    Products p
where   p.ProductName in( 'Chai' , 'Aniseed Syrup')


select *
from Products p
where p.CategoryID in (1,2)


select *
from Products p
where p.CategoryID in (select p.CategoryID --1,2
						from    Products p
						where   p.ProductName in( 'Chai' , 'Aniseed Syrup')
						)


/**   End Of Lesson 6 **/
/***********************/
-- Homework of lesson 6
--======================
--1 תרגיל

 SELECT  p.UnitPrice
                    FROM products p 
                    WHERE  ProductID = 8 --40.00

select *
from Products P
where p.UnitPrice < 40

select *
from Products P
where p.UnitPrice < (
					SELECT  p.UnitPrice 
					FROM products p 
					WHERE  ProductID = 8
					order by p.UnitPrice)


SELECT p.ProductName 
FROM Products p
WHERE p.UnitPrice <
                   (
				    SELECT  p.UnitPrice
                    FROM products p 
                    WHERE  ProductID = 8
					) 

--2 תרגיל
select p.ProductName ,p.UnitPrice
from Products p
where p.UnitPrice>
                  (select p.UnitPrice
                   FROM Products p
                   where p.ProductName='Tofu')

--3 תרגיל
SELECT ProductName,
       ProductID,
	   UnitPrice
FROM products
where UnitPrice > (select AVG(unitprice)
                   FROM products)

SELECT COUNT(*)
FROM products
where UnitPrice > (select AVG(unitprice)
                   FROM products)



--4 תרגיל
select *
from Products p
where p.CategoryID = (select p.CategoryID 
						from    Products p
						where   p.ProductName = 'Chai'
						)
and p.ProductName <> 'Chai'	

--5 תרגיל
select p.ProductName,
       p.UnitPrice,
	   p.CategoryID
from   Products p
where p.UnitPrice in
                    (select p.UnitPrice
                     from Products p
				     where p.CategoryID=5)

--6 תרגיל 
SELECT p.ProductName,
       p.ProductID,
	   p.UnitPrice
FROM products P
where UnitPrice > (select max(p1.unitprice)-100
                   FROM products p1)


SELECT    p.ProductName,
          p.UnitPrice 
FROM Products p
WHERE UnitPrice >   (SELECT min(UnitPrice)
                        FROM products
                        WHERE CategoryID = 5)

--7  תרגיל  
SELECT    p.ProductName,
          p.UnitPrice 
FROM Products p
WHERE UnitPrice > any  (SELECT UnitPrice
                        FROM products
                        WHERE CategoryID = 5)


 --8 תרגיל
SELECT  p.ProductName,
        p.UnitPrice 
FROM    Products p
WHERE   UnitPrice > all 
                       (SELECT UnitPrice
                        FROM products
                        WHERE CategoryID = 5)


-- תרגיל 9
select p.ProductName
from   Products p
where  p.CategoryID in (
                        select c.CategoryID
						from   Categories c
						where  c.CategoryName in ('Beverages',
						                          'Condiments')
				        )
and    p.SupplierID in (
                       select s.SupplierID
					   from   Suppliers s
					   where  s.Region is null)

-- תרגיל 10

SELECT distinct o.CustomerID 
FROM            Orders o  
WHERE            not exists (select 1 
                             from   [order details] od 
							 where  o.orderid=od.orderid
							 and  od.productid= 11  ) 

SELECT distinct o.CustomerID 
FROM            Orders o  
WHERE           exists (select 1 
                             from   [order details] od 
							 where  o.orderid=od.orderid
							 and  od.productid <> 11  ) 

-- שאלה 11
select distinct o1.customerid 
from            orders o1 
where exists   (select 1
                from   orders o2
				where  o1.customerid=o2.customerid
				and o1.orderdate- o2.orderdate > 500 
	   		    and datediff(day,o1.orderdate,o2.orderdate)>500 
				) 


/*       Lesson 7:
--       ==========
*/


--Exists / Not Exists
select p.ProductName,
       p.UnitPrice
from   products p 
where  exists (select UnitPrice
              from   Products 
              where  ProductName = 'Tofu'
			  and    p.UnitPrice > UnitPrice)

--Exists / Not Exists
select p.ProductName,
       p.UnitPrice
from   products p 
where  not exists (select UnitPrice
              from   Products 
              where  ProductName = 'Tofu'
			  and    p.UnitPrice <= UnitPrice)




-- חזרה


--החזרת את מזהה המוצר    
--של המוצרים,  אשר הוזמנו מהם יותר מ-50 פריטים
-- First ( write the sub query)

-- First Query , find product id's having more then 50 orders
select od.ProductID, --24 , 31 , 59 , 60
      count(*) as [Count of Orders per Product]
from [Order Details] od
group by od.ProductID
having count(*) > 50

--Second , find first name of products that their product id is the result of the first query
select p.ProductName
from Products p
where p.ProductID in (24 , 31 , 59 , 60)

-- 3rd , combine
select p.ProductName
from Products p
where p.ProductID in (
                     select od.ProductID --24 , 31 , 59 , 60
                     from [Order Details] od
                     group by od.ProductID
                     having count(*) > 50
                     )

-- Sub Query All
SELECT  p.ProductName,
        p.UnitPrice 
FROM    Products p
WHERE   UnitPrice > all 
                       (SELECT UnitPrice
                        FROM products
                        WHERE CategoryID = 5)

-- Sub Query Any
SELECT    p.ProductName,
          p.UnitPrice 
FROM Products p
WHERE UnitPrice > any  (SELECT UnitPrice
                        FROM products
                        WHERE CategoryID = 5)

-- Sub query in from example:
--===========================
--ציון מספר הפריטים בהזמנה הגדולה ביותר.
-- עבור כל הזמנה מחשבים מהו סה"כ מספר הפריטים שנרכשו בה , ואז בודקים מי המקסימלית בין התוצאות שהתקבלו

select od.OrderID, 
      max(count(*)) as [Products per Order]
from [order details]  od
group by od.OrderID

select   o.OrderDate,
         [Count of Orders].OrderID,
         max([Count of Orders].[Products per Order])
from      Orders O inner join
          (select  od.OrderID,
                  count(*) as [Products per Order]
          from    [order details]  od
          group by od.OrderID
		  ) as [Count of Orders]
on        O.OrderID = [Count of Orders].OrderID
group    by o.OrderDate,
             [Count of Orders].OrderID


--wrong...
--select sum(od.quantity)
--from   [order details] od
--group by od.OrderID

-- using from sub query
SELECT max(s.s_quantity) 
FROM ( SELECT sum(quantity) as s_quantity
       FROM [order details]
       GROUP BY orderId) s

-- מצא את הממוצע מחירים הקטן ביותר , מתוך ממוצעי מחיר היחדיה של המוצרים המיוצרים ע"י כלל הספקים במערכת
--עבור על כל ספק מצא את המחיר הממוצע של ככל המוצרים שהוא ייצר ומתוך כל הממוצעי מוצרים , מצא את זה הקטן ביותר
select   min( P2.[Average Unit Price]) as [Min of averages per suppliers]
from    (select p.SupplierID,
		         avg(p.unitprice)  as [Average Unit Price]
         from products p  
		 group by p.SupplierID)    P2
--

select e.City
from Employees E
group by e.City
having count (*) >2


-- Sub Query in Having
-- מצא את  הקטגוריות , שכמות המוצרים שלהם גדולה או שווה לכמות העובדים שבשמם הפרטי מופיע האות 
-- 'a'

select count(*) --7
from Employees e
where e.FirstName like '%a%'

select c.CategoryName,
       count (*) as [Products per Category]
from   Products p inner join Categories C
on     p.CategoryID = c.CategoryID
group by c.CategoryName
having count (*) > (
                    select count(*) --7
					from Employees e
					where e.FirstName like '%a%'
                    )





select p.CategoryID,
       count(*) as [Products per Category]
from Products P
group by p.CategoryID
having   count(*) > ( 
                    select COUNT(*)
                    from Employees e
					where e.FirstName like '%a%'
					)

-- הצג את שם הספק עבור ספקים שכמות המוצרים שייצרו גדולה מכמות העובדים שגרים בבריטניה
select S.CompanyName
from Products P inner join Suppliers S
on   p.SupplierID = S.SupplierID
group by S.CompanyName
having  count(*) > (
                   select count(*)
				   from   Employees E
				   where  E.Country = 'UK')  

--Having
-- הצג את שמות הקטגוריות של הקטגוריות שמחיר המוצרים הממוצע שלהן גדול מגילו של רוברט קינג
select   C.CategoryName , avg(p.UnitPrice)
from     Categories C inner join Products P
on       c.CategoryID = p.CategoryID
group by C.CategoryName
having   avg(p.UnitPrice) >  (
                              select year(getdate()) - year(e.HireDate)
                              from  Employees e
							  where e.FirstName = 'Robert'
							  and   e.LastName = 'King')


-- שאילתא מקוננת
-- מצא את שמות כל המוצרים שעולים יותר מהממוצע של מחיר היחידה, של המוצרים שמיוצרים ע"י ספקים מארצות הברית 

select  ProductName
from    Products
where   UnitPrice > (
					select avg(p.UnitPrice)
					from  Products p
					where p.SupplierID in (select S.SupplierID --2 ,3,16,19
											from Suppliers S
											where S.Country = 'USA') 
					)


select  ProductName 
from    Products
where   UnitPrice > (
					select avg(p.UnitPrice)
					from  Products p inner join Suppliers S
					on    p.SupplierID = S.SupplierID
					where S.Country = 'USA'
					)

select S.SupplierID --2 ,3,16,19
from Suppliers S
where S.Country = 'USA'

SELECT ProductName 
FROM Products
WHERE UnitPrice > 
                  (    
                  SELECT avg(unitprice) 
                  FROM products 
				  WHERE SupplierID in 
                                    (
                                    SELECT SupplierID 
                                    FROM Suppliers 
                                    WHERE Suppliers.Country like 'usa'
                                    )
                   )

--Exists
--1 תרגיל
SELECT p.ProductName 
FROM Products p
WHERE p.UnitPrice <
                   (
				    SELECT  p.UnitPrice
                    FROM products p 
                    WHERE  ProductID = 8
					) 

SELECT p.ProductName 
FROM Products p
where exists (
              select 1
			  from products
			  where ProductID = 8
			  and   p.UnitPrice < UnitPrice)

SELECT p.ProductName 
FROM Products p
where not exists (
              select 1
			  from products
			  where ProductID = 8
			  and   p.UnitPrice >= UnitPrice)





-- Question 9 with exists
select p.ProductName
from   Products p
where  exists (select 1
			   from   Categories c
			   where  c.CategoryName in ('Beverages',
						                          'Condiments')
               and c.CategoryID = p.CategoryID
			    )
and    exists  (
                       select 1
					   from   Suppliers s
					   where  s.SupplierID = p.SupplierID 
					   and    s.Region is null)


-- מצא את כל הלקוחות אשר לאחר שקנו את מוצר 28 קנו את מוצר 59.
SELECT distinct o.CustomerID 
FROM   Orders o 
WHERE  exists (select  1
               from    [Order Details] od1, 
			           [Order Details] od2,
					   orders o2
				where  o.OrderID = od1.OrderID
				and    o.customerid = o2.customerid
				and    o2.orderid = od2.orderid
				and    od2.productid=59 
				and    od1.productid=28 
				and    o2.orderdate > o.orderdate ) 




--- Set Operators:
--================

--Union
SELECT city FROM employees --9 results
UNION
SELECT city FROM customers --91 results

--Union all
SELECT city FROM employees 
UNION ALL
SELECT city FROM customers 

--INTERSECT
SELECT city FROM employees 
INTERSECT
SELECT city FROM customers 

--EXCEPT
SELECT city FROM employees 
EXCEPT
SELECT city FROM customers 






SELECT *
 FROM   products
 WHERE  UnitPrice > 30
 and    SupplierID = 1
 OR     SupplierID = 3
 or     UnitsInStock >30
EXCEPT
SELECT *
FROM   products
WHERE  UnitPrice > 30
and    (SupplierID = 1
OR     SupplierID = 3)
or     UnitsInStock >30

select *
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID

-- Home Work
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'RICAR' 
and   year(o.OrderDate) in( 1995, 1996 , 1997)
UNION
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ALFKI' 
and   year(o.OrderDate) in (1997,1998)
UNION
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ELAD' 


--  End Of Lesson 7:
   

-- Home Work Lesson 7 + 6




--Exists
 -- שיעור 6 , תרגיל 1
SELECT p.ProductName 
FROM Products p
WHERE p.UnitPrice <
                   (
				    SELECT  p.UnitPrice
                    FROM products p 
                    WHERE  ProductID = 8
					) 

SELECT p1.ProductName 
FROM Products p1
where  not exists (
            select 1
			from   Products p2
			where  p2.ProductID = 8
			and    p1.unitprice >= p2.UnitPrice)

SELECT p1.ProductName 
FROM Products p1
where   exists (
            select 1
			from   Products p2
			where  p2.ProductID = 8
			and    p1.unitprice < p2.UnitPrice)

--4 תרגיל
select *
from Products p
where p.CategoryID = (select p.CategoryID 
						from    Products p
						where   p.ProductName = 'Chai'
						)
and p.ProductName <> 'Chai'

select *
from Products p1
where exists (
			  select 1
			  from   Products 
			  where  ProductName = 'Chai'
			  AND    P1.CategoryID = CategoryID
			 )
and p1.ProductName <> 'Chai'



--3 תרגיל
SELECT ProductName,
       ProductID,
	   UnitPrice
FROM products
where UnitPrice > (select AVG(unitprice)
                   FROM products)


SELECT p1.ProductName,
       p1.ProductID,
	   p1.UnitPrice
FROM   products p1
where  exists (
			   select 1
			   FROM products p2
			   having p1.UnitPrice >  AVG(p2.unitprice)
			  )



 -- שיעור 9 , תרגיל 1
select p.ProductName
from   Products p
where  p.CategoryID in (
                        select c.CategoryID
						from   Categories c
						where  c.CategoryName in ('Beverages',
						                          'Condiments')
				        )
and    p.SupplierID in (
                       select s.SupplierID
					   from   Suppliers s
					   where  s.Region is null)

-- שאלה 9 exsits 
select  p.ProductName
from    Products p
where exists (           select 1 
                         from Categories c
		                 where c.CategoryName in ( 'Beverages' ,'Condiments' )
						 and   c.CategoryID = p.CategoryID
		               )  
	and exists (
	                        select 1
							from Suppliers s
							where  s.Region is null
							and  p.SupplierID = s.SupplierID)


SELECT P.ProductName, 
       C.CategoryName, 
	   S.Region
FROM Products P inner join Categories C
ON P.CategoryID = C.CategoryID
inner join Suppliers S
ON P.SupplierID = S.SupplierID
WHERE P.CategoryID IN (1,2) AND
S.Region IS NULL
ORDER BY C.CategoryID, P.ProductName

-- תרגיל 10

select 1 
                             from   [order details] od 
							 and  od.productid= 11 

SELECT distinct o.CustomerID 
FROM            Orders o  
WHERE            not exists (select 1 
                             from   [order details] od 
							 where  o.orderid=od.orderid
							 and  od.productid= 11  ) 
SELECT distinct o.CustomerID 
FROM            Orders o  
WHERE             exists (select 1 
                             from   [order details] od 
							 where  o.orderid=od.orderid
							 and  od.productid != 11  ) 

-- Question 11
select c.CompanyName
from    Customers C
where   exists (
               select 1
			   from   orders latestOrder ,
			          orders earliestOrder
			   where   latestOrder.CustomerID = C.CustomerID
			   and    earliestOrder.CustomerID = c.CustomerID
               and    DATEDIFF(dd,latestOrder.OrderDate,earliestOrder.OrderDate) >500			         
			   )


SELECT distinct o.CustomerID 
FROM            Orders o  
WHERE           exists (select 1 
                             from   [order details] od 
							 where  o.orderid=od.orderid
							 and  od.productid <> 11  ) 

-- שאלה 11
select distinct o1.customerid 
from            orders o1 
where exists   (select 1
                from   orders o2
				where  o1.customerid=o2.customerid
				and datediff(day,o1.orderdate,o2.orderdate)>500 
				) 

-- HomeWork From Lesson 7

-- הציגו את שמות העובדים שהתחילו לעבוד אחרי שלושת העובדים הראשונים בחברה
select E.FirstName + ' ' + e.LastName as [Full Name] ,
       HireDate
from Employees  e
where e.HireDate > all(
						select top 3 e.HireDate
						from  Employees e
					)

-- מצא את כל הלקוחות אשר לאחר שקנו את מוצר 28 קנו את מוצר 59
SELECT distinct o.CustomerID 
FROM   Orders O
WHERE  exists (select  1
               from    [Order Details] latest_order, 
			           [Order Details] earliest_order,
					   Orders O2
               where  latest_order.ProductID = 59
			   and    earliest_order.ProductID = 28
			   and    o.OrderID =latest_order.OrderID
			   and    o2.OrderID = earliest_order.OrderID
			   and    O.CustomerID = o2.CustomerID
			   and    o.OrderDate > o2.OrderDate
                ) 

--מצא את הממוצע מחירים הקטן ביותר , מתוך ממוצעי מחיר היחידה של המוצרים המיוצרים ע"י כלל הספקים במערכת
select   min( P.[Average Unit Price]) as [Min of averages per suppliers]
from    (select SupplierID,
		         avg(unitprice)  as [Average Unit Price]
         from products 
		 group by SupplierID) p

-- הצג את שם הספק עבור ספקים שכמות המוצרים שייצרו גדולה מכמות העובדים שגרים בבריטניה
select S.CompanyName
from Products P inner join Suppliers S
on   p.SupplierID = S.SupplierID
group by S.CompanyName
having  count(*) > (
                   select count(*)
				   from   Employees E
				   where  E.Country = 'UK')  

--שאלת Union
 --כתוב שליפה שתציג את החיבור של שנות ההזמנות בצורה ייחודית עבור האוכלוסיה הבאה:
--     שנות ההזמנות של לקוח RICAR שהזמין בשנים 1994-1997
--      שנות ההזמנות של לקוח ALFKI שהזמין בשנים 1997-1998

select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'RICAR' 
and year(o.OrderDate) in( 1994,1995, 1996 , 1997)
union
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ALFKI' 
and year(o.OrderDate) in (1997,1998)

--עבור שתי האוכלוסיות לעיל הצג את שנות ההזמנה המשותפות של שניהם.
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'RICAR' 
and year(o.OrderDate) in( 1994,1995, 1996 , 1997)
intersect
select year(o.OrderDate)
from Customers C inner join Orders O
on c.CustomerID = o.CustomerID
where c.CustomerID = 'ALFKI' 
and year(o.OrderDate) in (1997,1998)

/* Lesson 8 (Case / Choose / Grouping Sets)
--==========
*/


--simple case function
SELECT DISTINCT   Discount,
                  CASE Discount
                     WHEN 0 THEN 'No Discount' 
                     WHEN 0.05 THEN 'Small Discount' 
                     ELSE 'Fine Discount' 
                  END 'Discount text' 
FROM [Order Details]

--searched case function
SELECT OrderID,
       Quantity,
	   CASE
	  	  WHEN Quantity > 30 THEN 'The quantity is greater than 30'
		  WHEN Quantity = 30 THEN 'The quantity is 30'
		  ELSE 'The quantity is under 30'
        END AS QuantityText
FROM [Order Details];

--Case in Order by
SELECT  CompanyName, 
	    City, 
	    Country
FROM    Customers
ORDER BY
		(CASE
			WHEN City IS NULL THEN Country
			ELSE City
		END);


--תרגיל כיתה
select S.CompanyName,
       s.fax,
	   s.homepage,
       case 
	         when s.HomePage is null and s.fax is null then 'No Data Found'
			 when s.HomePage is null Then CONCAT('fax :',s.fax)
			 when s.fax is null Then CONCAT('homepage :',s.homepage)
			 else CONCAT('homepage :',s.HomePage,'; fax :',s.fax)
	   End as [main contact option]
from Suppliers S


-- תרגיל בית
SELECT CustomerID,
	   DATEDIFF(dd,ShippedDate,RequiredDate) as "Diff",
		CASE
			  WHEN ShippedDate IS NULL
	    		 THEN 'Call for schedule shipping'
			  WHEN DATEDIFF(dd,ShippedDate,RequiredDate) < 0
				 THEN 'Call and apologize'
			   ELSE 'Shipped O.K'
		END AS "Shipping Status"
FROM Orders
order by "Shipping Status"


--Choose
-------
SELECT CHOOSE (4, 'Beverages', 'Condiments', 'Confections') AS choose_result;

SELECT employeeid, 
       lastname, 
	   reportsto, 
       choose(reportsto,'1','A','B','C','D')
FROM employees

-- Sub query in select , with choose example:
SELECT productid, 
		productname , 
		categoryid,
		CHOOSE (categoryid,
				(select categoryname from categories where categoryid = 1),
				(select categoryname from categories where categoryid = 2),
				(select categoryname from categories where categoryid = 3),
				(select categoryname from categories where categoryid = 4),
				(select categoryname from categories where categoryid = 5),
				(select categoryname from categories where categoryid = 6),
				(select categoryname from categories where categoryid = 7),
				(select categoryname from categories where categoryid = 8)) as [category name]
FROM products 
where CategoryID = 5


SELECT productid, 
		productname , 
		categoryid,
		CHOOSE (categoryid,
				'A',
				'B',
				'C',
				'D',
				'E')
			 as [category name]
FROM products 
where CategoryID = 5

select top 1 productid,c.CategoryName
from Products p inner join Categories c
on   p.CategoryID = c.CategoryID
where  p.CategoryID  = 5


SELECT o.OrderDate,
       datename(mm,o.OrderDate),
	    CHOOSE(MONTH(o.OrderDate),'QR1','QR1', 'QR1',
								  'QR2','QR2', 'QR2',
								  'QR3','QR3', 'QR3',
								  'QR4','QR4', 'QR4') as [Q Date]
FROM Orders o
order by 3


select  datename(mm,o.OrderDate),
        MONTH(o.OrderDate) 
from Orders O

--שיעורי בית
SELECT o.OrderID,
       O.EmployeeID,
		CHOOSE (o.EmployeeID,
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 1),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 2),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 3),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 4),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 5),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 6),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 7),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 8),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 9)) as [Employee Full Name]
FROM Orders o


SELECT concat( e.FirstName , ' ',e.LastName) as [FULL Name],
       e.BirthDate,
	   MONTH(e.BirthDate) as [month of Birth], 
	   datename(mm,e.BirthDate),
       CHOOSE(MONTH(e.BirthDate),'Winter','Winter', 'Spring','Spring','Spring','Summer','Summer',   
                          'Summer','Autumn','Autumn','Autumn','Winter') AS Quarter_Modified
FROM Employees e


-- HomeWork Lesson 8

/* Lesson 9 */
--הצג מטבלת Products את כל פרטי המוצרים שנמצאים באותה קטגוריה כמו מוצר ששמו  Chai  אין להציג בתוצאה הסופית את המוצר chai עצמו.

--פתור באמצעות שימוש ב-Exists , מי הם הלקוחות שבאף הזמנה שלהם לא היה מוצר 11


select  distinct C.CustomerID,
        C.CompanyName
from    Customers c inner join orders O
on      c.CustomerID = o.CustomerID
where   not exists ( select 1
                     from [Order Details] OD
	    			 where od.OrderID = o.OrderID
			    	 and   od.ProductID = 11
				)

-- This query retrieves 0 rows since it's looking only for the prduct 'Chai'
select *
from Products P
where exists  (
			  select 1
			  from    Categories C
			  where   P.CategoryID = C.CategoryID
			  and   p.ProductName = 'Chai'     
			  )
and   p.ProductName <> 'Chai'

select *
from Products P
where p.CategoryID = (
					  select c.CategoryID
					  from    Categories C
					  where   P.CategoryID = C.CategoryID
					  and   p.ProductName = 'Chai'     
					  )
and   p.ProductName <> 'Chai'



-- מצא את כל הלקוחות אשר לאחר שקנו את מוצר 28 קנו את מוצר 59

--- Customers with orders that the product ID is 28
select [Earliest Orders].CustomerID,
       [Earliest Orders].OrderDate
from   [Order Details] [Earliest Order Details] inner join     Orders [Earliest Orders]
on     [Earliest Order Details].OrderID = [Earliest Orders].OrderID
where  [Earliest Order Details].ProductID = 28

--- Customers with orders that the product ID is 59
select [latest_Orders].CustomerID,
       [latest_Orders].OrderDate
from   [Order Details] [Latest Order Details] inner join     Orders [latest_Orders]
on     [Latest Order Details].OrderID = [latest_Orders].OrderID
where  [Latest Order Details].ProductID = 59

select [Earliest Orders].CustomerID
from  Orders [Earliest Orders]
where exists(
             select 1
			 from   [Order Details] [Earliest Order Details],
			        [Order Details] [Latest Order Details],
					Orders [latest_Orders]
			 where  [Earliest Orders].OrderID = [Earliest Order Details].OrderID
			 and    [Latest Order Details].OrderID = [latest_Orders].OrderID
			 and    [Earliest Order Details].ProductID = 28
			 and    [Latest Order Details].ProductID = 59
			 and    [latest_Orders].OrderDate < [Earliest Orders].OrderDate
			 and    [latest_Orders].CustomerID = [Earliest Orders].CustomerID
			 )

--- Self Join
select *
from  Employees E  
where e.FirstName = 'Nancy'

select *
from Employees E
where e.EmployeeID = 2

-- There are two diffrent populations of employees for employees and managers

select emp.FirstName ,
       man.FirstName
from  Employees emp inner join Employees Man
on    emp.ReportsTo = man.EmployeeID
where emp.FirstName = 'andrew'
--where man.FirstName = 'andrew'

select e.ReportsTo
from  Employees E  
where e.FirstName = 'andrew'

-- Exists

select *
from Employees emp
where not exists (
				 select 1
				 from  Employees man
				 where emp.ReportsTo = man.EmployeeID)


select   e.Country,
         e.city , count(*)
from    Employees e
group by e.Country,
         e.City

--exists

select *
from Orders O inner join [Order Details] OD
on O.OrderID = OD.OrderID
inner join Customers C
on o.OrderID = c.CustomerID

select *
from  Orders O ,
      [Order Details] OD,
	  Customers C
where O.OrderID = OD.OrderID
and   o.CustomerID = c.CustomerID

select distinct c.CustomerID
from Customers C,
     Orders O
where c.CustomerID = O.CustomerID

select  *
from Customers C left outer join Orders O
on  c.CustomerID = O.CustomerID



select *
from Customers C
where exists (
			 select 'Geri'
			 from  orders O
			 where o.CustomerID = c.CustomerID
			 and   O.OrderID in ())


select  distinct C.CustomerID,
        C.CompanyName
from    Customers c inner join orders O
on      c.CustomerID = o.CustomerID
--inner join   [Order Details] OD
--on     o.OrderID = od.OrderID
--and    od.ProductID <> 11
where     not exists ( select 1
                     from [Order Details] OD
	    			 where od.OrderID = o.OrderID
			    	 and   od.ProductID = 11
				     )
  


select [Earliest Orders].CustomerID--,
--       [Earliest Orders].OrderDate
from   [Order Details] [Earliest Order Details] inner join     Orders [Earliest Orders]
on     [Earliest Order Details].OrderID = [Earliest Orders].OrderID
where  [Earliest Order Details].ProductID = 28


SELECT distinct o.CustomerID 
FROM   Orders O
WHERE  exists (select  1
               from    [Order Details] latest_order, 
			      [Order Details] earliest_order,
					   Orders O2
               where  latest_order.ProductID = 59
			   and    earliest_order.ProductID = 28
			   and    o.OrderID =latest_order.OrderID
			   and    o2.OrderID = earliest_order.OrderID
			   and    O.CustomerID = o2.CustomerID
			   and    o.OrderDate > o2.OrderDate)

/*
   End of Lesson 9
*/

/*
   Lesson 9 :
   ==========
*/
-- Case
--תרגיל כיתה
select S.CompanyName,
       s.fax,
	   s.homepage,
       case 
	         when s.HomePage is null and s.fax is null then 'No Data Found'
			 when s.HomePage is null Then CONCAT('fax :',s.fax)
			 when s.fax is null Then CONCAT('homepage :',s.homepage)
			 else CONCAT('homepage :',s.HomePage,'; fax :',s.fax)
	   End as [main contact option]
from Suppliers S


-- תרגיל בית
SELECT CustomerID,
	   DATEDIFF(dd,ShippedDate,RequiredDate) as "Diff",
		CASE
			  WHEN ShippedDate IS NULL
	    		 THEN 'Call for schedule shipping'
			  WHEN DATEDIFF(dd,ShippedDate,RequiredDate) < 0
				 THEN 'Call and apologize'
			   ELSE 'Shipped O.K'
		END AS "Shipping Status"
FROM Orders
order by "Shipping Status"

select choose(4,'a','b','c')

--שיעורי בית
SELECT o.OrderID,
       O.EmployeeID,
		CHOOSE (o.EmployeeID,
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 1),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 2),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 3),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 4),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 5),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 6),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 7),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 8),
				(select concat( FirstName , ' ',LastName) from Employees where EmployeeID = 9)) as [Employee Full Name]
FROM Orders o




select month(getdate())

SELECT concat( e.FirstName , ' ',e.LastName) as [FULL Name],
       e.BirthDate,
	   MONTH(e.BirthDate) as [month of Birth], 
	   datename(mm,e.BirthDate),
       CHOOSE(MONTH(e.BirthDate),'Winter','Winter', 'Spring','Spring','Spring','Summer','Summer',   
                          'Summer','Autumn','Autumn','Autumn','Winter') AS Quarter_Modified
FROM Employees e

SELECT   e.EmployeeID,
         choose(e.EmployeeID,'Emp Number 1',
                            'Emp Number 2',
                              'Emp Number 3')
FROM Employees e



select e.BirthDate,
        MONTH(e.BirthDate),
		case
		      when MONTH(e.BirthDate) between 3 and 5 then 'Spring'
			  when MONTH(e.BirthDate) between 6 and 9 then 'Summer'
			  when MONTH(e.BirthDate) between 6 and 9 then 'Autumn'
			  else 'Winter'
		end as [Season]	  
from Employees e			  

-- מצא את כמות העובדים שיש עבור כל מדינה
select e.Country,
       count(*) as  [Emp per Countries]
from   Employees e
group  by e.Country

select e.city,
       count(*) as  [Emp per City]
from   Employees e
group  by e.city

select e.Country,
       count(*) as  [Emp per City]
from   Employees e
group  by  e.Country


-- Grouping Sets
-- Count Of Years and Cities

select e.Country,
       count(*) as  [Emp per Countries]
from   Employees e
group  by e.Country
Union all
select e.city,
       count(*) as [Emp per cities]
from   Employees e
group  by e.city
 
select * 
from 
		(
		select e.Country,
			   count(*) as  [Emp per Countries],
			   null as city, -- Cities
			   null as [Emp per cities]-- count of cities
		from   Employees e
		group  by e.Country
		Union 
		select isnull(e.city,'+ Total Cities') as country,
			   null as [Emp per Countries],
			   e.city,
			   count(*) as [Emp per cities]
		from   Employees e
		group  by e.city
		) as A
order  by a.Country


select e.Country,
			   count(*) as  [Emp per Countries],
			   null as city, -- Cities
			   null as [Emp per cities]-- count of cities
		from   Employees e
		group  by e.Country
		Union 
		select isnull(e.city,'+ Total Cities') as country,
			   null as [Emp per Countries],
			   e.city,
			   count(*) as [Emp per cities]
		from   Employees e
		group  by e.city


-- GROUPING SET (Countries/ cities)
select e.Country,
       e.city,
	   isnull(e.city,'+ Total Cities') as [City /Total Cities],
	   count(*) as  [Emp per Cities]
from   Employees e
GROUP BY GROUPING SETS(e.Country,e.city)
order by 2,1


-- GROUPING SET (Countries/ cities)
select isnull(e.Country,'+ Total Emp'),
 	   case 
	   when   e.Country is null then ' '
	   else	  
             isnull(e.city,'+ Total Cities') 
		end	 as [City /Total Cities],
	   count(*) as  [Emp per Cities]
from   Employees e
GROUP BY GROUPING SETS((),
                       e.Country,
					   (e.Country,e.city))
order by 1,2

SELECT EmployeeID,
       customerid,
	   count(*)as [Total]
FROM orders
GROUP BY EmployeeID,customerid

 
SELECT    EmployeeID, 
          customerid,
	      count(*)as [Total]
FROM orders 
GROUP BY GROUPING SETS ((employeeid, customerid),
                         EmployeeID,
						 ()
						)
order by 1 ,2



select sum(p.UnitPrice)
from Products p


select c.CategoryName,
       sum(p.UnitPrice) as 'Sum Unit Price'
from   Products p inner join Categories c
on     p.CategoryID = c.CategoryID
group by  c.CategoryName

select  S.CompanyName,
       c.CategoryName,
       sum(p.UnitPrice) as 'Sum Unit Price'
from   Products p inner join Categories c
on     p.CategoryID = c.CategoryID
inner join Suppliers S
on    p.SupplierID = s.SupplierID
group by GROUPING SETS ((),c.CategoryName,S.CompanyName,(c.CategoryName,S.CompanyName)) 


--תרגיל כיתה
select c.CategoryName ,
       sum(p.unitprice) as [Sum of Unit Price]
from  Products p inner join Categories c
on p.CategoryID = c.CategoryID
GROUP BY GROUPING SETS ((),c.CategoryName)
order by 1

select c.CategoryName ,
       sum(p.unitprice) as [Sum of Unit Price]
from  Products p inner join Categories c
on p.CategoryID = c.CategoryID
GROUP BY rollup (c.CategoryName,)
order by 1


select  S.CompanyName,
       c.CategoryName,
       sum(p.UnitPrice) as 'Sum Unit Price'
from   Products p inner join Categories c
on     p.CategoryID = c.CategoryID
inner join Suppliers S
on    p.SupplierID = s.SupplierID
group by rollup (c.CategoryName,S.CompanyName) 
--group by grouping sets ((),c.CategoryName,(c.CategoryName,S.CompanyName)) 
order by 2,1


select  S.CompanyName,
       c.CategoryName,
       sum(p.UnitPrice) as 'Sum Unit Price'
from   Products p inner join Categories c
on     p.CategoryID = c.CategoryID
inner join Suppliers S
on    p.SupplierID = s.SupplierID
group by cube (c.CategoryName,S.CompanyName) 
--group by grouping sets ((),c.CategoryName,S.CompanyName,(c.CategoryName,S.CompanyName)) 
order by 2,1




-- rollup
SELECT categoryid, supplierid, count(*)
FROM products
GROUP BY rollup (categoryid, supplierid)


--Roll Up breaking into select with group by
SELECT categoryid, supplierid, count(*)
FROM products
group by categoryid, supplierid
union all
SELECT categoryid, null, count(*)
FROM products
group by categoryid
union all 
select null,null,count(*)
from products



--Cube ( 3 Columns)
SELECT categoryid, 
       supplierid, 
	   count(*) as [Count Of Orders]
FROM products
GROUP BY CUBE (categoryid, supplierid)
order by 1


SELECT categoryid, 
       supplierid, 
	   count(*) as [Count Of Orders]
FROM products
GROUP BY  GROUPING SETS ((categoryid, supplierid),						 
						 categoryid,
						 supplierid,
						 ())
order by 1

SELECT e.Country,
       e.city,
			   isnull(customerid,'Total Per customers') customerid, 
			   count(*) as 'count_1'
FROM Employees e
WHERE customerid like 'b%'
GROUP BY GROUPING Sets ((EmployeeID,CustomerID),EmployeeID,CustomerID) 
order by EmployeeID,
	     customerid

-- Grouping Set
--פתרון לשאלה 4
select year(O.OrderDate) as [Order Year],
       MONTH(O.OrderDate)as [Order Month],
       count(*) as [count of Orders]
from  orders O
GROUP BY GROUPING SETS (year(O.OrderDate),(year(O.OrderDate),MONTH(O.OrderDate)))
order by 1,2
-- End Of Lesson 10




