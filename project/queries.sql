-- INSERT INTO Users (UserID, Username, PasswordHash, Email)
-- VALUES
-- (1, 'karthik_rao', 'hash1234abcd', 'karthik.rao@example.com'),
-- (2, 'ananya_sharma', 'hash5678efgh', 'ananya.sharma@example.com'),
-- (3, 'arun_kumar', 'hash9012ijkl', 'arun.kumar@example.com'),
-- (4, 'lakshmi_devi', 'hash3456mnop', 'lakshmi.devi@example.com'),
-- (5, 'vivek_singh', 'hash7890qrst', 'vivek.singh@example.com');

-- Inserting Orders
INSERT INTO Orders (OrderID, UserID, TotalAmount, Status) VALUES
(1, 1, 150.50, 'Shipped'),
(2, 3, 75.25, 'Delivered'),
(3, 2, 200.00, 'Pending');

-- Inserting OrderItems (assuming we have products with IDs 1, 2, and 3)
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 2, 50.25),
(1, 2, 1, 50.00),
(2, 3, 3, 25.08),
(3, 1, 1, 50.25),
(3, 2, 3, 49.92);

-- Inserting CartItems (assuming we have products with IDs 1, 2, 3, and 4)
INSERT INTO CartItems (UserID, ProductID, Quantity) VALUES
(4, 1, 1),
(4, 3, 2),
(5, 2, 1),
(5, 4, 3);

DROP TABLE Carts;
