CREATE DATABASE IF NOT EXISTS hw3;

-- Switch to the newly created database
USE hw3;

create table Student (
sid integer primary key,
sname varchar(50),
semail varchar(50),
sphone varchar(50));
create table Club(
cid integer auto_increment primary key,
cname varchar(50),
cdescription varchar(50));
create table Event(
eid int auto_increment primary key,
ename varchar(50),
edescription varchar(50),
edate datetime,
memprice int,
nonmemprice int,
maxpeople int
);
create table Membership(
sid int,
cid int,
semester varchar(50),
year int,
memberfee int,
primary key(sid,cid,semester,year),
FOREIGN KEY (sid) REFERENCES Student(sid) ON DELETE CASCADE,
FOREIGN KEY (cid) REFERENCES Club(cid) ON DELETE CASCADE
);
create table HoldsEvent(
eid int,
cid int,
FOREIGN KEY (eid) REFERENCES Event(eid) ON DELETE CASCADE,
FOREIGN KEY (cid) REFERENCES Club(cid) ON DELETE CASCADE
);
create table Register(
eid int,
sid int,
price int,
rating float,
FOREIGN KEY (eid) REFERENCES Event(eid) ON DELETE CASCADE,
FOREIGN KEY (sid) REFERENCES Student(sid) ON DELETE CASCADE
);

-- Inserting sample data into the Student table
INSERT INTO Student (sid, sname, semail, sphone) VALUES
(1, 'Alice', 'alice@example.com', '555-0101'),
(2, 'Bob', 'bob@example.com', '555-0102'),
(3, 'Charlie', 'charlie@example.com', '555-0103');

-- Inserting sample data into the Club table
INSERT INTO Club (cname, cdescription) VALUES
('Chess Club', 'A club for chess enthusiasts.'),
('Book Club', 'A club for people who love to read.');

-- Inserting sample data into the Event table
INSERT INTO Event (ename, edescription, edate, memprice, nonmemprice, maxpeople) VALUES
('Chess Tournament', 'An exciting chess tournament.', '2023-10-15 10:00:00', 10, 15, 2),
('Reading Session', 'A group reading session.', '2023-11-20 15:00:00', 5, 10, 3);

-- Inserting sample data into the Membership table
INSERT INTO Membership (sid, cid, semester, year, memberfee) VALUES
(1, 1, 'Fall', 2023, 20),
(2, 1, 'Fall', 2023, 25),
(1, 2, 'Fall', 2023, 15),
(3, 2, 'Fall', 2023, 15);

-- Inserting sample data into the HoldsEvent table
INSERT INTO HoldsEvent (eid, cid) VALUES
(1, 1),
(2, 2);

-- Inserting sample data into the Register table
INSERT INTO Register (eid, sid, price, rating) VALUES
(1, 1, 10, 4.5),
(1, 2, 10, 4.0),
(2, 1, 5, 5.0);


-- Inserting additional sample data into the Membership table for Spring 2024
INSERT INTO Membership (sid, cid, semester, year, memberfee) VALUES
(1, 1, 'Spring', 2024, 30),  -- Increased fee for Chess Club
(2, 1, 'Spring', 2024, 35),  -- Increased fee for Chess Club
(1, 2, 'Spring', 2024, 15),  -- Same fee for Book Club
(3, 2, 'Spring', 2024, 20);  -- Increased fee for Book Club


INSERT INTO Club ( cname, cdescription)
VALUES ('Football', 'Football club for enthusiasts.');

