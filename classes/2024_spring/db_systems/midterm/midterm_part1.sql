CREATE DATABASE IF NOT EXISTS midtermp1;

-- Switch to the newly created database
USE midtermp1;

CREATE TABLE Room (
    floor CHAR(50),
    line CHAR(1),
    basePrice DECIMAL(10, 2),
    configCode VARCHAR(50),
    PRIMARY KEY (floor, line)
);

CREATE TABLE Guest (
    gID VARCHAR(20),
    fname VARCHAR(50),
    lname VARCHAR(50),
    phone VARCHAR(20),
    memStatus VARCHAR(20),
    PRIMARY KEY (gID)
);

CREATE TABLE Night (
    month VARCHAR(20),
    day INT,
    weekend BOOLEAN, 
    holiday BOOLEAN, 
    -- both of the above might affect availability
    PRIMARY KEY (month, day)
);

CREATE TABLE Reserve (
    month VARCHAR(20),
    day INT,
    floor CHAR(50),
    line CHAR(1),
    gID VARCHAR(20), 
    pricePaid DECIMAL(10, 2),
    notes TEXT,
    PRIMARY KEY (month, day, floor, line, gID),
    FOREIGN KEY (floor, line) REFERENCES Room(floor, line),
    FOREIGN KEY (month, day) REFERENCES Night(month, day),
    FOREIGN KEY (gID) REFERENCES Guest(gID)
);

CREATE TABLE Adjoin (
    floor CHAR(50),
    line1 CHAR(1),
    line2 CHAR(1),
    PRIMARY KEY (floor, line1, line2),
    FOREIGN KEY (floor, line1) REFERENCES Room(floor, line),
    FOREIGN KEY (floor, line2) REFERENCES Room(floor, line)
);



-- Inserting data into Room
INSERT INTO Room (floor, line, basePrice, configCode) VALUES ('1', 'A', 100.00, 'Standard');
INSERT INTO Room (floor, line, basePrice, configCode) VALUES ('1', 'B', 120.00, 'DeluxeKing');
INSERT INTO Room (floor, line, basePrice, configCode) VALUES ('2', 'A', 150.00, 'Standard');
INSERT INTO Room (floor, line, basePrice, configCode) VALUES ('2', 'B', 200.00, 'DeluxeKing');

-- Inserting data into Guest 
INSERT INTO Guest (gID, fname, lname, phone, memStatus) VALUES ('1', 'John', 'Doe', '1234567890', 'Gold');
INSERT INTO Guest (gID, fname, lname, phone, memStatus) VALUES ('2', 'Jane', 'Smith', '0987654321', 'Silver');

-- Inserting data into Night
INSERT INTO Night (month, day, weekend, holiday) VALUES ('March', 22, FALSE, FALSE);
INSERT INTO Night (month, day, weekend, holiday) VALUES ('March', 23, TRUE, FALSE);
INSERT INTO Night (month, day, weekend, holiday) VALUES ('February', 28, FALSE, FALSE);
INSERT INTO Night (month, day, weekend, holiday) VALUES ('April', 15, FALSE, FALSE);

-- Inserting data into Reserve
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('March', 22, '1', 'A', '1', 110.00, 'Late check-in');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('March', 22, '1', 'B', '2', 130.00, 'Needs extra towels');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('March', 23, '1', 'A', '2', 120.00, '');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('March', 23, '1', 'B', '2', 140.00, '');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('February', 28, '2', 'B', '1', 210.00, 'Birthday celebration');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('April', 15, '1', 'A', '1', 105.00, '');
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes) VALUES ('April', 15, '2', 'B', '1', 205.00, '');


INSERT INTO Guest (gID, fname, lname, phone, memStatus) VALUES ('jfg3889', 'Junior', 'Garcia', '123-456-7890', 'Gold');
-- Reservation for March 22 at 90% of the basePrice for Junior Garcia (jfg388)
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes)
VALUES ('March', 29, '5', 'C', 'jfg3889', (SELECT 0.9 * basePrice FROM Room WHERE floor = '5' AND line = 'C'), 'Reserved at 90% basePrice');

-- Reservation for March 23 at 90% of the basePrice for Junior Garcia (jfg388)
INSERT INTO Reserve (month, day, floor, line, gID, pricePaid, notes)
VALUES ('March', 30, '5', 'C', 'jfg3880', (SELECT 0.9 * basePrice FROM Room WHERE floor = '5' AND line = 'C'), 'Reserved at 90% basePrice');


