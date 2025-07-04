-- company -- 
CREATE DATABASE Company;
USE Company;

-- Create Branch table
CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    location VARCHAR(100)
);
DESC Branch;

-- Create Department table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    branch_id INT,
    CONSTRAINT FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);
DESC Department;

-- Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    CONSTRAINT FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
DESC Employees;

-- Create Product table
CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    emp_id INT,
    branch_id INT,
    CONSTRAINT FOREIGN KEY (branch_id) REFERENCES Branch(branch_id),
    CONSTRAINT FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);
DESC Product;

-- Insert into Branch
INSERT INTO Branch (branch_id, branch_name, location) VALUES
(1, 'North Branch', 'Delhi'),
(2, 'South Branch', 'Mumbai'),
(3, 'East Branch', 'Kolkata'),
(4, 'West Branch', 'Ahmedabad'),
(5, 'Central Branch', 'Bhopal');
SELECT * FROM Branch;

-- Insert into Department
INSERT INTO Department (dept_id, dept_name, branch_id) VALUES
(101, 'HR', 1),
(102, 'Finance', 2),
(103, 'Marketing', 3),
(104, 'IT', 4),
(105, 'Law', 5);
SELECT * FROM Department;

-- Insert into Employees
INSERT INTO Employees (emp_id, emp_name, dept_id)VALUES
(1001, 'Amit', 101),
(1002, 'Verma', 102),
(1003, 'Rohit', 103),
(1004, 'Mehta', 104),
(1005, 'Uday', 105);
SELECT * FROM Employees;

-- Insert into Product
INSERT INTO Product (product_id, product_name, emp_id,branch_id) VALUES
(501, 'Laptop', 1001,1),
(502, 'Tablet', 1002,2),
(503, 'Bag', 1003,3),
(504, 'Books', 1004,4),
(505, 'Keyboard', 1005,5);
SELECT * FROM Product;


