USE hotelmanagementsystem;

CREATE TABLE IF NOT EXISTS room (
    room_number VARCHAR(20) PRIMARY KEY,
    availability VARCHAR(20),
    cleaning_status VARCHAR(20),
    price VARCHAR(20),
    bed_type VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS customer (
    document VARCHAR(30),
    number VARCHAR(30),
    name VARCHAR(50),
    gender VARCHAR(15),
    country VARCHAR(30),
    room VARCHAR(20),
    checkintime VARCHAR(80),
    deposit VARCHAR(20)
);

-- Agar room table khali ho tabhi sample rooms insert karein:
INSERT IGNORE INTO room VALUES 
('101', 'Available', 'Cleaned', '1500', 'Single Bed'),
('102', 'Available', 'Cleaned', '2500', 'Double Bed'),
('103', 'Available', 'Cleaned', '3500', 'Double Bed');

SELECT * FROM room;