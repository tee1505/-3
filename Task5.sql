SELECT categoryName, ProductName, UnitPrice
FROM Products,Categories
WHERE Products.CategoryID = Categories.CategoryID

SELECT categoryName, ProductName, UnitPrice
FROM Products as p,Categories as c
WHERE p.CategoryID = c.CategoryID
