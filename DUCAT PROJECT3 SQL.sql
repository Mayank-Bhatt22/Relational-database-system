-- College 
CREATE DATABASE College;
USE College;

-- Department 
CREATE TABLE Department(
Department_id INT PRIMARY KEY,
Department_name VARCHAR(50)
);
DESC Department;

-- Teacher table
CREATE TABLE Teacher( 
Teacher_id INT PRIMARY KEY,
Teacher_name VARCHAR(30), 
Subject VARCHAR(50),
Department_id INT,
CONSTRAINT FOREIGN KEY(Department_id) REFERENCES Department(Department_id)
);
DESC Teacher;

-- Course table
CREATE TABLE Course( 
Course_id INT PRIMARY KEY,
Course_name VARCHAR(50),
Teacher_id INT,
CONSTRAINT FOREIGN KEY(Teacher_id) REFERENCES Teacher(Teacher_id)
);
DESC Course;

-- Student table
CREATE TABLE Student( 
Student_id INT PRIMARY KEY,
Student_name VARCHAR(30),
Gender CHAR(10),
Course_id INT,
Department_id INT,
CONSTRAINT FOREIGN KEY(Course_id) REFERENCES Course(Course_id),
CONSTRAINT FOREIGN KEY(Department_id) REFERENCES Department(Department_id)
);
DESC Student;

INSERT INTO Department (Department_id, Department_name) VALUES
(1, 'Computer Science'),
(2, 'Commerce'),
(3, 'Mathematics'),
(4, 'English Literature'),
(5, 'Economics');

SELECT * FROM Department;

INSERT INTO Teacher (Teacher_id, Teacher_name, Subject, Department_id) VALUES
(101, 'Dr. Sharma', 'Python Programming', 1),
(102, 'Mr. Kapoor', 'Financial Accounting', 2),
(103, 'Ms. Iyer', 'Linear Algebra', 3),
(104, 'Mrs. Verma', 'British Poetry', 4),
(105, 'Mr. Saxena', 'Microeconomics', 5);

SELECT * FROM Teacher;

INSERT INTO Course (Course_id, Course_name, Teacher_id) VALUES
(201, 'Intro to Python', 101),
(202, 'Accounting Basics', 102),
(203, 'Algebra I', 103),
(204, 'Poetry Analysis', 104),
(205, 'Economics 101', 105);

SELECT * FROM Course;

INSERT INTO Student (Student_id, Student_name, Gender, Course_id, Department_id) VALUES
(1001, 'Ritika', 'Female', 201, 1),
(1002, 'Aryan', 'Male', 202, 2),
(1003, 'Sneha', 'Female', 203, 3),
(1004, 'Kunal', 'Male', 204, 4),
(1005, 'Priya', 'Female', 205, 5);

SELECT * FROM Student;
