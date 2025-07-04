-- Blinkit
CREATE DATABASE Blinkit;
USE Blinkit;

-- Product table
CREATE TABLE Products(
Product_id INT PRIMARY KEY, 
Name VARCHAR(30),
Price float
);
DESC Products;

-- User table
CREATE TABLE User(
User_id INT PRIMARY KEY,
Name VARCHAR(30),
Address VARCHAR(50),
Product_id INT,
CONSTRAINT FOREIGN KEY(Product_id) REFERENCES Products(Product_id)
);
DESC User;
	
-- orders table
CREATE TABLE Orders(
Order_id INT PRIMARY KEY,
User_id INT,
Product_id INT,
Total float,
CONSTRAINT FOREIGN KEY(User_id) REFERENCES User(User_id),
CONSTRAINT FOREIGN KEY(Product_id) REFERENCES Products(Product_id)
);
DESC Orders;

-- Deliverypartner table
CREATE TABLE Deliverypartner(
Partner_id INT PRIMARY KEY,
Name VARCHAR(30),
Phone INT,
Order_id INT,
User_id INT,
CONSTRAINT FOREIGN KEY(User_id) REFERENCES User(User_id),
CONSTRAINT FOREIGN KEY(Order_id) REFERENCES Orders(Order_id)
);
DESC Deliverypartner;

INSERT INTO Products (Product_id, Name, Price) VALUES
(101, 'Milk', 50.0),
(102, 'Bread', 30.0),
(103, 'Eggs', 70.0),
(104, 'Rice', 90.0),
(105, 'Oil', 120.0);
SELECT * FROM Products;

INSERT INTO User (User_id, Name, Address, Product_id) VALUES
(1, 'Amit', 'Burari, Delhi', 101),
(2, 'Sneha', 'Rohini, Delhi', 102),
(3, 'Rahul', 'Pitampura, Delhi', 103),
(4, 'Meena', 'Lajpat Nagar, Delhi', 104),
(5, 'Ravi', 'Karol Bagh, Delhi', 105);
SELECT * FROM User;

INSERT INTO Orders (Order_id, User_id, Product_id, Total) VALUES
(501, 1, 101, 50.0),
(502, 2, 102, 30.0),
(503, 3, 103, 70.0),
(504, 4, 104, 90.0),
(505, 5, 105, 120.0);
SELECT * FROM Orders;

INSERT INTO Deliverypartner (Partner_id, Name, Phone, Order_id, User_id) VALUES
(201, 'Suresh',987654320, 501, 1),
(202, 'Karan',987654311, 502, 2),
(203, 'Pooja',987654212, 503, 3),
(204, 'Alok',987653213, 504, 4),
(205, 'Neha',987653214, 505, 5);
SELECT * FROM Deliverypartner;
