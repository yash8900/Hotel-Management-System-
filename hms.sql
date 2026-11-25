-- ************************************************************
-- FINAL MASTER RESET: HOTEL MANAGEMENT SYSTEM
-- ************************************************************

DROP DATABASE IF EXISTS hotelmanagementsystem;
CREATE DATABASE hotelmanagementsystem;
USE hotelmanagementsystem;

-- 1. Authentication Table
CREATE TABLE login(
    username VARCHAR(25) PRIMARY KEY, 
    password VARCHAR(25) NOT NULL
);
INSERT INTO login VALUES('admin', '12345');

-- 2. Employee Management (PRIMARY KEY: aadhar)
CREATE TABLE employee(
    name VARCHAR(25) NOT NULL, 
    age VARCHAR(10), 
    gender VARCHAR(15), 
    job VARCHAR(30), 
    salary VARCHAR(15), 
    phone VARCHAR(15), 
    email VARCHAR(40), 
    aadhar VARCHAR(20) PRIMARY KEY 
);

-- 3. Room Management (PRIMARY KEY: roomnumber)
CREATE TABLE room(
    roomnumber VARCHAR(10) PRIMARY KEY, 
    availability VARCHAR(20) DEFAULT 'Available', 
    cleaning_status VARCHAR(20) DEFAULT 'Cleaned', 
    price VARCHAR(20), 
    bed_type VARCHAR(20)
);

-- 4. Driver Details
CREATE TABLE driver(
    name VARCHAR(20), 
    age VARCHAR(10), 
    gender VARCHAR(15), 
    company VARCHAR(20), 
    brand VARCHAR(20), 
    available VARCHAR(20) DEFAULT 'Yes', 
    location VARCHAR(40)
);

-- 5. Customer Check-in Data
CREATE TABLE customer(
    document VARCHAR(20), 
    number VARCHAR(30) PRIMARY KEY, 
    name VARCHAR(30), 
    gender VARCHAR(15), 
    country VARCHAR(20), 
    room VARCHAR(10), 
    checkintime VARCHAR(80), 
    deposit VARCHAR(20)
);

-- 6. Departmental Records
CREATE TABLE department(
    department VARCHAR(30), 
    budget VARCHAR(30)
);

INSERT INTO department VALUES('Front Office','500000'), ('Housekeeping', '40000'), ('Security', '320000');

-- 7. Add Test Rooms
INSERT INTO room VALUES ('101', 'Available', 'Cleaned', '1500', 'Single Bed');
INSERT INTO room VALUES ('102', 'Available', 'Cleaned', '2500', 'Double Bed');
INSERT INTO room VALUES ('103', 'Available', 'Cleaned', '1200', 'Single Bed');
INSERT INTO room VALUES ('301', 'Occupied', 'Cleaned', '5000', 'King Size');

-- 8. Add Test Employees (FIXED: UNIQUE AADHAR IDs)
INSERT INTO employee VALUES ('Yash Sharma', '24', 'Male', 'Manager', '75000', '9876543210', 'yash@hotel.com', 'AADHAR_001');
INSERT INTO employee VALUES ('Sita Verma', '30', 'Female', 'Accountant', '45000', '9123456789', 'sita@hotel.com', 'AADHAR_002');

-- 9. FINAL VERIFICATION (Last lines of the script)
SELECT '--- CHECKING ALL TABLES ---' AS Status;
SHOW TABLES;
SELECT * FROM room;
SELECT * FROM employee;
/**TRUNCATE TABLE customer;
***UPDATE room SET availability = 'Available';**/