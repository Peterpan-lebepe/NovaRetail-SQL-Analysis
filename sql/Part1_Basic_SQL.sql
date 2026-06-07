-- PART 1: BASIC SQL QUERIES

-- 1. Product Catalog (Electronics only)
SELECT 
    ProductID,
    ProductName,
    UnitPrice
FROM Products_clean
WHERE Category = 'Electronics'
ORDER BY UnitPrice DESC;

-- 2. Customers per Region
SELECT 
    Region,
    COUNT(CustomerID) AS TotalCustomers
FROM Customers
GROUP BY Region
ORDER BY TotalCustomers DESC;

-- 3. 10 Most Recent Orders
SELECT 
    OrderID,
    OrderDate,
    TotalSales
FROM Sales
ORDER BY OrderDate DESC
LIMIT 10;

-- 4. Affordable Products
SELECT 
    ProductName,
    Category,
    UnitPrice
FROM Products_clean
WHERE UnitPrice < 1000;

-- 5. Customer Satisfaction Summary
SELECT 
    Satisfaction,
    COUNT(*) AS TotalResponses
FROM CustomerFeedback
GROUP BY Satisfaction
ORDER BY TotalResponses DESC;
