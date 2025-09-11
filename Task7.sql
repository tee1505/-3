--วันที่11/9/2568
-- 1.   จงแสดงให้เห็นว่าพนักงานแต่ละคนขายสินค้าประเภท Beverage ได้เป็นจำนวนเท่าใด และเป็นจำนวนกี่ชิ้น เฉพาะครึ่งปีแรกของ 2540(ทศนิยม 4 ตำแหน่ง)
SELECT
  e.EmployeeID,
  (e.FirstName + ' ' + e.LastName) AS EmployeeName,
  CAST(ROUND(SUM(od.UnitPrice * od.Quantity * (1.0 - od.Discount)), 4) AS DECIMAL(18,4)) AS TotalAmount,
  CAST(ROUND(SUM(od.Quantity), 4) AS DECIMAL(18,4)) AS TotalQuantity
FROM Employees e
JOIN Orders o ON e.EmployeeID = o.EmployeeID
JOIN [Order Details] od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName = 'Beverages'
  AND o.OrderDate >= '1997-01-01' AND o.OrderDate < '1997-07-01'
GROUP BY e.EmployeeID, e.FirstName, e.LastName
ORDER BY e.EmployeeID;
