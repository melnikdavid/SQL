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
--Find any employee that his/her first name starts with �A�
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

--1. ����� �� ����� ������� ������ ����� ������

select top 3 *
from Products
order by UnitPrice desc

--2. ����� �� ����� ������� ������� �����, ����� ������.

select top 3 *
from Employees
order by BirthDate desc

--3. ����� �� �� ������� ����� [order details] ���� ����� ������ ����� � � 50 �� ���� 50

select *
from [Order Details]
where Quantity > 50

--4. ����� �� �� ������� ������� �� ����
select * 
from Customers
where Country in ('Germany ','Spain') 

select * 
from Customers
where Country = 'Germany '
OR Country = 'Spain'


--5. ��� ����� Employees �� ��� ����� �� �����, �� ������ , ������ ����� ���� ������� ��� ���� ����� ���� �� ���� ������ 4 , 5 , 7

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



--6. ��� ����� Customers �� �� ����� ������� , ���� ������ ����� ������� ���� � 'a'-
select CompanyName,
       Country
from Customers
where CompanyName like '%a'

--7. ��� ����� Products �� �� ����� ����� �������� ��� , ���� ������� ����� ���� 'a '��� ��� ��� ���� ����

select ProductName,
       CategoryID
from Products
where ProductName like '%a_'



/*
����� �� ����� ������� ������ �����, ����� ������� �������� 2, 5 �� 8
 ����� ������ � g,d  �� x
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
-- ����
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

--��� ��������
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

-- Full Outer Join (����� ������)
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


--1.     ����� �� ����� ��������� �������� (����� �� ������� ������ �� ����)

--���� ����
select p.ProductName,
       c.CategoryName
from Categories c inner join Products p
on p.CategoryID=c.CategoryID

--���� ����

select p.ProductName,
       c.CategoryName
from Categories c ,
      Products p
where p.CategoryID=c.CategoryID

--2.     ����� �� ����� ������� �������� ���� (�� ����, ���� �����)

--���� ����

select s.CompanyName,
       od.OrderID
from Suppliers s inner join Products p
on s.SupplierID=p.SupplierID
inner join [Order Details] od
on od.ProductID=p.ProductID

--���� ����
select s.CompanyName,
       od.OrderID
from Suppliers s,
     Products p,
	 [Order Details] od 
where s.SupplierID=p.SupplierID
and
 od.ProductID=p.ProductID

 --3.     ����� �� ����� ���� ���������, ���� �� ������� ����� �� ���� ������ (suppliers) ������� ������ �������� ����.
 
 --���� ����
 select c.CategoryName,
        su.CompanyName,
		su.SupplierID
 from Categories c inner join Products p
 on c.CategoryID= p.CategoryID
 inner join Suppliers su
 on su.SupplierID=p.SupplierID
 
 --���� ����
  select c.CategoryName,
        su.CompanyName,
		su.SupplierID
 from Categories c,
      Products p,
	  Suppliers su 
 where c.CategoryID= p.CategoryID
and  su.SupplierID=p.SupplierID

--4.     ��� �� ���� ������ ���� ���� orders ��� �� ����� �� ����� ���� ���� Customers , ���� ������ ���� ����� ���� 'a'

--���� ����
 select o.orderid,
       cus.CompanyName
 from Customers cus  inner join orders o 
 on cus.CustomerID =o.CustomerID
 where  cus.CompanyName like 'a%'

 --���� ����

 select o.orderid,
        cus.CompanyName
 from Customers cus,
       orders o 
 where cus.CustomerID =o.CustomerID
and  cus.CompanyName like 'a%'

--5.      ��� ���� ���� region �� ����� ����� (RegionDescription )����� ���� Territories  �� ����� ������ (TerritoryDescription)

--���� ����
select reg.RegionDescription, 
       ter.TerritoryDescription
from Region reg inner join Territories ter
on  reg.RegionID=ter.RegionID

--���� ����
select reg.RegionDescription, 
       ter.TerritoryDescription
from Region reg,
     Territories ter
where reg.RegionID=ter.RegionID



--���� ����� - ����� �� ���� ������� ����� �� ���� ������� (companyname)  ����� ����.
-- ���� ����
select p.productname, 
       cus.ContactName
from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join orders o
on od.OrderID=o.OrderID
inner join Customers cus
on o.CustomerID= cus.CustomerID

--���� ����

select p.productname,
       cus.ContactName
from Products p,
     [Order Details] od,
	 Orders o,
	 Customers cus
where p.ProductID=od.ProductID
and od.OrderID=o.OrderID
and o.CustomerID= cus.CustomerID

select *
from Shippers S inner join Orders O
on S.ShipperID = o.ShipVia
     
 --������� ����� Where � ��� ��������
 SELECT*
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
--and year(OrderDate) = '1996'
order by 1



--inner join
Select c.customerid,
	   o.OrderID
From   customers c  inner join orders o
On     c.customerid = o.customerid
order by OrderID


/*
��� ��� �� �
CustomerID
����� �������
��� �
OrderID
����� �������
���� �� ������� ������ �� �� ����� �����
*/
---Left join
Select c.customerid,
	   o.OrderID
From   customers c left outer join orders o
On     c.customerid = o.customerid
where o.OrderID is null
order by   o.OrderID asc


--right join
Select c.customerid,
	   o.OrderID
From   customers c  right outer join orders o 
On     c.customerid = o.customerid
--where  o.OrderID is null
order by OrderID


-- Self Join
select Emp.FirstName + ' ' + emp.LastName as [Employee Full Name],
	   Man.FirstName + ' ' + Man.LastName as [Manager Full Name]
from Employees Emp left outer join Employees Man
on   emp.ReportsTo = Man.EmployeeID

--cross Join
Select c.customerid,
	   o.OrderID
From   customers c  cross join orders o
order by OrderID


/*******  Functions Scalar */


/*
���� ���� KitchenAid

*/

-- String Function Examples

-- Substring

select lower('HHHvvv')

select FirstName,
       lower( FirstName) as "Lower First Name",
	   len(FirstName) as "length of first name"
from Employees


select FirstName + ' ' +LastName as "Full Name",
	   upper(FirstName + ' ' +LastName) as "Upper Full Name",
	    upper(FirstName) + ' ' +upper(LastName) as "Upper Full Name",
	   lower(FirstName + ' ' +LastName) as "Lower Full Name"	   
from   Employees


select FirstName + ' ' +LastName as "Full Name",
	   upper(FirstName + ' ' +LastName) as "Upper Full Name",
	   lower(FirstName + ' ' +LastName) as "Lower Full Name"
from   Employees

select '                              abc',
	   ltrim( '                              abc'),
	     rtrim( '      abc                 ')

--Example of string functions
select  LastName, 
        REPLACE(LastName , 'a' ,'$') as 'New Last Name'
from Employees


select substring ('Elad Sella',1,4)



-- Date examples
select GETDATE()

--Oven Function  (���)

--Oven Function  ( Blender(���,����,���))

select year('2022-07-12 21:25:43.653')
select year(GETDATE())


--- Calc age of employee
select    year(e.BirthDate) as [Year of birth of employee],
          year(GETDATE()) - year(e.BirthDate) as [Age of Employee]
from Employees e

-- End Of lesson 4
--=================

--HomeWork (Lesson 4)

