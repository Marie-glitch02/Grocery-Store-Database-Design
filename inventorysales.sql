CREATE TABLE inventory (
    item_num DECIMAL(10, 0),                 -- Item number (e.g., 1000.0)
    description VARCHAR(255),               -- Item description (e.g., Bennet Farm free-range eggs)
    quantity_on_hand DECIMAL(10, 2),        -- Quantity on hand (e.g., 29.0)
    cost DECIMAL(10, 2),                    -- Cost of the item (e.g., 2.35)
    purchase_date DATE,                     -- Date of purchase (e.g., 2/1/2022)
    vendor VARCHAR(255),                    -- Vendor (e.g., Bennet Farms, Rt. 17 Evansville, IL 55446)
    price DECIMAL(10, 2),                   -- Price (e.g., 5.49)
    date_sold DATE,                         -- Date the item was sold (e.g., 2/2/2022)
    cust DECIMAL(10, 0),                    -- Customer ID (e.g., 198765)
    quantity_sold DECIMAL(10, 2),           -- Quantity sold (e.g., 2.0)
    item_type VARCHAR(50),                  -- Type of item (e.g., Dairy, Canned)
    location VARCHAR(50),                   -- Location code (e.g., D12)
    unit VARCHAR(50)                        -- Unit of measurement (e.g., dozen, bunch)
);
INSERT INTO inventory (item_num, description, quantity_on_hand, cost, purchase_date, vendor, price, date_sold, cust, quantity_sold, item_type, location, unit)
VALUES
(1000.0, 'Bennet Farm free-range eggs', 29.0, 2.35, '2022-02-01', 'Bennet Farms, Rt. 17 Evansville, IL 55446', NULL, NULL, NULL, NULL, 'Dairy', 'D12', 'dozen'),
(1000.0, 'Bennet Farm free-range eggs', 27.0, NULL, NULL, NULL, 5.49, '2022-02-02', 198765, 2.0, 'Dairy', 'D12', 'dozen'),
(2000.0, 'Ruby''s Kale', 3.0, NULL, NULL, NULL, 3.99, '2022-02-02', NULL, 2.0 , 'Produce', 'p12', 'bunch'),
(1100.0, 'Freshness White beans', 13.0, NULL, NULL, NULL, 1.49, '2022-02-02', 202900, 2.0, 'Canned', 'a2', '12 ounce can'),
(1100.0, 'Freshness White beans', 53.0, 0.69, '2022-02-02', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', NULL, NULL, NULL, NULL, 'Canned', 'a2', '12 oz can'),
(1000.0, 'Bennet Farm free-range eggs', 25.0, NULL, NULL, NULL, 5.99, '2022-02-04', 196777, 2.0, 'Dairy', 'D12', 'dozen'),
(1100.0, 'Freshness White beans', 45.0, NULL, NULL, NULL, 1.49, '2022-02-07', 198765, 8.0, 'Canned', 'a2', '12-oz can'),
(1222.0, 'Freshness Green beans', 59.0, 0.59, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', NULL, NULL, NULL, NULL, 'Canned', 'a3', '12 ounce can'),
(1223.0, 'Freshness Green beans', 12.0, 1.75, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', NULL, NULL, NULL, NULL, 'Canned', 'a7', '36 oz can'),
(1224.0, 'Freshness Wax beans', 31.0, 0.65, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', NULL, NULL, NULL, NULL, 'Canned', 'a3', '12 ounce can'),
(1000.0, 'Bennet Farm free-range eggs', 21.0, NULL, NULL, NULL, 5.49, '2022-02-11', 277177, 4.0, 'Dairy', 'd12', 'dozen'),
(1100.0, 'Freshness White beans', 41.0, NULL, NULL, NULL, 1.49, '2022-02-11', NULL, 4.0, 'Canned', 'a2', '12 ounce can'),
(1222.0, 'Freshness Green beans', 47.0, NULL, '2022-02-12', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', 1.29, NULL, NULL, NULL, 'Canned', 'a3', '12-oz can'),
(1224.0, 'Freshness Wax beans', 23.0, NULL, '2022-02-12', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', 1.55, NULL, NULL, NULL, 'Canned', 'a3', '12-oz can'),
(2000.0, 'Ruby''s Kale', 28.0, 1.29, NULL, NULL, NULL, NULL, NULL, NULL, 'Produce', 'p12', 'bunch'),
(2001.0, 'Ruby''s Organic Kale', 20.0, 2.19, '2022-02-12', 'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, WI', NULL, NULL, NULL, NULL, 'Produce', 'po2', 'bunch'),
(1223.0, 'Freshness Green beans', 7.0, NULL, NULL, NULL, 3.49, '2022-02-13', 198765, 5.0, 'Canned', 'a7', '36 oz can'),
(2001.0, 'Ruby''s Organic Kale', 19.0, 6.99, '2022-02-13', 'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, WI', NULL, NULL, NULL, NULL, 'Produce', 'po2', 'bunch'),
(2001.0, 'Ruby''s Organic Kale', 7.0, 6.99, '2022-02-14', 'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, WI', NULL, NULL, NULL, NULL, 'Produce', 'po2', 'bunch'),
(1223.0, 'Freshness Green beans', 17.0, 1.8, '2022-02-15', 'Freshness, Inc., 202 E. Maple St., St. Joseph, IL', NULL, NULL, NULL, NULL, 'Canned', 'a7', '36 oz can'),
(2000.0, 'Ruby''s Kale', 26.0, NULL, NULL, NULL, 3.99, '2022-02-15', NULL, 2.0, 'Produce', 'p12', 'bunch');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Unit VARCHAR(50)
);

CREATE TABLE Vendors (
    VendorID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(255),
    Address TEXT,
    ContactInfo VARCHAR(100)
);

CREATE TABLE InventoryS (
    InventoryID INT PRIMARY KEY IDENTITY,
    ProductID INT,
    QuantityOnHand INT,
    Cost DECIMAL(10,2),
    PurchaseDate DATE,
    VendorID INT,
    Location VARCHAR(50),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (VendorID) REFERENCES Vendors(VendorID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(255),
    Address TEXT,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY IDENTITY,
    CustomerID INT,
    DateSold DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE SalesDetails (
    SaleDetailID INT PRIMARY KEY IDENTITY,
    SaleID INT,
    ProductID INT,
    QuantitySold INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO Products (ProductID, Name, Description, Category, Price, Unit) VALUES
(1000, 'Bennet Farm free-range eggs', 'Organic free-range eggs', 'Dairy', 5.49, 'dozen'),
(1100, 'Freshness White beans', 'Premium quality white beans', 'Canned', 1.49, '12 oz can'),
(1222, 'Freshness Green beans', 'Canned green beans', 'Canned', 1.29, '12-oz can'),
(1223, 'Freshness Green beans', 'Large canned green beans', 'Canned', 1.80, '36 oz can'),
(1224, 'Freshness Wax beans', 'Canned wax beans', 'Canned', 1.55, '12-oz can'),
(2000, 'Ruby’s Kale', 'Fresh organic kale', 'Produce', 3.99, 'bunch'),
(2001, 'Ruby’s Organic Kale', 'Organic kale bunch', 'Produce', 6.99, 'bunch');
INSERT INTO Vendors (Name, Address, ContactInfo) VALUES
('Bennet Farms', 'Rt. 17 Evansville, IL 55446', 'info@bennetfarms.com'),
('Freshness, Inc.', '202 E. Maple St., St. Joseph, MO 64503', 'contact@freshness.com'),
('Ruby Redd Produce, LLC', '1212 Milam St., Kenosha, WI 53140', 'sales@rubyredd.com');
INSERT INTO InventoryS (ProductID, QuantityOnHand, Cost, PurchaseDate, VendorID, Location) VALUES
(1000, 29, 2.35, '2022-02-01', 1, 'D12'),
(1000, 27, NULL, NULL, 1, 'D12'),
(2000, 3, NULL, NULL, 3, 'P12'),
(1100, 13, NULL, NULL, 2, 'A2'),
(1100, 53, 0.69, '2022-02-02', 2, 'A2'),
(1222, 59, 0.59, '2022-02-10', 2, 'A3'),
(1223, 12, 1.75, '2022-02-10', 2, 'A7'),
(1224, 31, 0.65, '2022-02-10', 2, 'A3'),
(2001, 20, 2.19, '2022-02-12', 3, 'P02');
INSERT INTO Customers (Name, Address, PhoneNumber, Email) VALUES
('John Doe', '123 Main St, Chicago, IL', '555-1234', 'john@example.com'),
('Jane Smith', '456 Oak St, St. Louis, MO', '555-5678', 'jane@example.com'),
('Michael Johnson', '789 Pine St, Kansas City, MO', '555-9876', 'michael@example.com');
INSERT INTO Sales (CustomerID, DateSold, TotalAmount) VALUES
(1, '2022-02-02', 10.98),
(2, '2022-02-12', 24.75),
(3, '2022-02-13', 8.49);
INSERT INTO SalesDetails (SaleID, ProductID, QuantitySold, Price) VALUES
(1, 1000, 2, 5.49),
(1, 2000, 2, 3.99),
(2, 1222, 12, 1.29),
(2, 1224, 8, 1.55),
(3, 1223, 5, 3.49);

SELECT * FROM Products;
SELECT * FROM InventoryS;
SELECT * FROM SalesDetails;

SELECT s.SaleID, c.Name, p.Name AS Product, sd.QuantitySold, sd.Price 
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
JOIN SalesDetails sd ON s.SaleID = sd.SaleID
JOIN Products p ON sd.ProductID = p.ProductID;

-- Q1: What are the top-selling items and their total sales?
SELECT 
    p.ProductID, 
    p.Name AS ProductName, 
    SUM(sd.QuantitySold) AS TotalQuantitySold, 
    SUM(sd.QuantitySold * sd.Price) AS TotalSalesAmount
FROM SalesDetails sd
JOIN Products p ON sd.ProductID = p.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalSalesAmount DESC;

-- 2. Identify the Vendors Supplying the Most Products
SELECT 
    v.VendorID, 
    v.Name AS VendorName, 
    COUNT(DISTINCT i.ProductID) AS TotalProductsSupplied
FROM InventoryS i
JOIN Vendors v ON i.VendorID = v.VendorID
GROUP BY v.VendorID, v.Name
ORDER BY TotalProductsSupplied DESC;

-- 3.Find the Customers Who Bought the Most Items
SELECT 
    c.CustomerID, 
    c.Name AS CustomerName, 
    SUM(sd.QuantitySold) AS TotalItemsBought
FROM SalesDetails sd
JOIN Sales s ON sd.SaleID = s.SaleID
JOIN Customers c ON s.CustomerID = c.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalItemsBought DESC;

-- 4. Total Revenue Generated Per Product Category
SELECT 
    p.Category, 
    SUM(sd.QuantitySold * sd.Price) AS TotalRevenue
FROM SalesDetails sd
JOIN Products p ON sd.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;

-- 5. Find the Products with the Highest Inventory Levels
SELECT TOP 5
    p.Name AS ProductName, 
    i.QuantityOnHand
FROM InventoryS i
JOIN Products p ON i.ProductID = p.ProductID
ORDER BY i.QuantityOnHand DESC
;
-- 6. Find the Sales with the Highest Total Amount
SELECT TOP 5
    s.SaleID, 
    c.Name AS CustomerName, 
    s.DateSold, 
    s.TotalAmount
FROM Sales s
JOIN Customers c ON s.CustomerID = c.CustomerID
ORDER BY s.TotalAmount DESC