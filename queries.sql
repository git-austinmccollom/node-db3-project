-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select Product.ProductName, Category.CategoryName
from Product
inner join Category on Product.CategoryId=Category.Id

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT Shipper.CompanyName, [Order].Id, [Order].ShippedDate
FROM Shipper
JOIN [Order] ON [Order].ShipVia = Shipper.Id
WHERE [Order].OrderDate < '2012-08-09'

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT OrderDetail.OrderId, OrderDetail.Quantity, Product.ProductName
FROM OrderDetail
JOIN Product ON Product.Id = OrderDetail.ProductId
WHERE OrderDetail.OrderId = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT [Order].Id, Customer.CompanyName, Employee.LastName
FROM [Order]
JOIN Customer on [Order].CustomerId = Customer.Id
JOIN Employee on [Order].EmployeeId = Employee.Id
