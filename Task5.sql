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

