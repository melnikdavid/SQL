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
 SELECT*
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
group by o.CustomerID
having COUNT(*) >5