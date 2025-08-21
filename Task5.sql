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

