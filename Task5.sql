SELECT categoryName, ProductName, UnitPrice
FROM Products,Categories
WHERE Products.CategoryID = Categories.CategoryID

SELECT categoryName, ProductName, UnitPrice
FROM Products as p,Categories as c
WHERE p.CategoryID = c.CategoryID

SELECT categoryName, ProductName, UnitPrice
FROM Products as p join Categories as c
on p.CategoryID = c.CategoryID

SELECT categoryName, ProductName, UnitPrice
FROM Products as p,Categories as c
WHERE p.CategoryID = c.CategoryID
and CategoryName = 'seafood'

--แนะนำให้ใช้อันนี้
SELECT categoryName, ProductName, UnitPrice
FROM Products as p join Categories as c
on p.CategoryID = c.CategoryID
where CategoryName = 'seafood'

SELECT CompanyName, OrderID
FROM Orders, Shippers
WHERE Shippers.ShipperID = Orders.Shipvia

SELECT CompanyName, OrderID
FROM Orders JOIN Shippers
ON Shippers.ShipperID=Orders.Shipvia
WHERE OrderID=10275

SELECT * FROM Orders WHERE  OrderID=10275
SELECT * FROM [Order Details] where OrderID=10275

--ต้องการหรัสสินค้า ชื่อสินค้า บริษัทผู้จำหน่าย ประเทศ
SELECT p.ProductID, p.ProductName, s.CompanyName, s.Country
FROM Products p JOIN Suppliers s on p.SupplierID=s.SupplierID
WHERE  Country IN('usa','uk')
--ต้องการหรัสสพนักงาน ชื่อพนักงาน หรัสใบสั่งซื้อที่เกี่ยวข้อง เรียงตามลำดับหรัสพนักงาน
SELECT e.EmployeeID, FirstName, o.OrderID
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
ORDER BY EmployeeID

SELECT O.OrderID เลขใบสั่งซื้อ, C.CompanyName ลูกค้า,
E.FirstName พนักงาน, O.ShipAddress ส่งไปที่
FROM Orders O
join Customers C on O.CustomerID=C.CustomerID
join Employees E on O.EmployeeID=E.EmployeeID

select e.EmployeeID, FirstName , count(*) as [จ านวน order]
, sum(freight) as [Sum of Freight]
from Employees e join Orders o on e.EmployeeID = o.EmployeeID
where year(orderdate) = 1998
group by e.EmployeeID, FirstName

--ต้องการชื่อบริษัทขนส่ง และจำนวนใบสั่งซื้อที่เกี่ยวข้อง
SELECT s.CompanyName, count(*) จำนวนorder
FROM Shippers s JOIN orders o on s.ShipperID = o.ShipVia
GROUP BY s.CompanyName
order BY 2 DESC
-- ต้องการหรัสสินค้า ชื่อสินค้า และจำนวนทั้งหมดที่ขายได้
SELECT p.ProductID, 
       p.ProductName, 
       SUM(od.Quantity) AS จำนวนที่ขายได้
FROM Products p
JOIN [Order Details] od 
     ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName;

--ต้องการหรัสสินค้า ชื่อสินค้า ที่ nancy ขายได้ ทั้งหมด เรียงตามลำดับหรัสสินค้า
SELECT distinct p.ProductID, p.ProductName
FROM Employees e
JOIN Orders o 
     ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od 
     ON o.OrderID = od.OrderID
JOIN Products p 
     ON od.ProductID = p.ProductID
WHERE e.FirstName = 'Nancy'
ORDER BY p.ProductID;

-- ต้องการชื่อบริษัทลุกค้าชื่อ Around the Horn ซื้อสินค้าที่มาจากประเทศอะไรบ้าง
SELECT distinct s.Country
FROM Customers c JOIN Orders o on c.CustomerID = o.CustomerID
JOIN [Order Details] od on o.OrderID = od.OrderID
JOIN Products p on od.ProductID = p.ProductID
JOIN Suppliers s on p.SupplierID = s.SupplierID
WHERE c.CompanyName = 'Around the Horn'

