CREATE DATABASE IF NOT EXISTS q1;

-- Switch to the newly created database
USE q1;


CREATE TABLE Student (
    sid INT PRIMARY KEY,
    sname VARCHAR(255),
    semail VARCHAR(255),
    sphone VARCHAR(20)
);

CREATE TABLE Club (
    cid INT PRIMARY KEY,
    cname VARCHAR(255),
    cdescription TEXT
);

CREATE TABLE Event (
    eid INT PRIMARY KEY,
    ename VARCHAR(255),
    edescription TEXT,
    edate DATE,
    memprice DECIMAL(10, 2),
    nonmemprice DECIMAL(10, 2),
    maxpeople INT
);

CREATE TABLE Membership (
    sid INT,
    cid INT,
    semester VARCHAR(20),
    year INT,
    memberfee DECIMAL(10, 2),
    PRIMARY KEY (sid, cid, semester, year),
    FOREIGN KEY (sid) REFERENCES Student(sid),
    FOREIGN KEY (cid) REFERENCES Club(cid)
);

CREATE TABLE HoldsEvent (
    eid INT,
    cid INT,
    PRIMARY KEY (eid, cid),
    FOREIGN KEY (eid) REFERENCES Event(eid),
    FOREIGN KEY (cid) REFERENCES Club(cid)
);

CREATE TABLE Register (
    eid INT,
    sid INT,
    price DECIMAL(10, 2),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    PRIMARY KEY (eid, sid),
    FOREIGN KEY (eid) REFERENCES Event(eid),
    FOREIGN KEY (sid) REFERENCES Student(sid)
);


INSERT INTO Student (sid, sname, semail, sphone) VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane Smith', 'jane.smith@example.com', '098-765-4321'),
(3, 'Alex Johnson', 'alex.johnson@example.com', '555-555-5555');


INSERT INTO Club (cid, cname, cdescription) VALUES
(1, 'Chess Club', 'A club for chess enthusiasts.'),
(2, 'Literature Club', 'A club for lovers of literature.'),
(3, 'Coding Club', 'A club to improve coding skills.');


INSERT INTO Event (eid, ename, edescription, edate, memprice, nonmemprice, maxpeople) VALUES
(1, 'Chess Tournament', 'Annual chess competition.', '2023-05-15', 5.00, 10.00, 100),
(2, 'Book Reading', 'Group reading of a classic novel.', '2023-06-20', 0.00, 5.00, 50),
(3, 'Hackathon', 'Coding competition for all skill levels.', '2023-07-10', 10.00, 20.00, 200);


INSERT INTO Membership (sid, cid, semester, year, memberfee) VALUES
(1, 1, 'Fall', 2023, 15.00),
(2, 2, 'Fall', 2023, 10.00),
(3, 3, 'Spring', 2023, 20.00);


INSERT INTO HoldsEvent (eid, cid) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO Register (eid, sid, price, rating) VALUES
(1, 1, 5.00, 5),
(2, 2, 0.00, 4),
(3, 3, 10.00, 5);


INSERT INTO Student (sid, sname, semail, sphone) VALUES
(4, 'Emily Turner', 'emily.turner@example.com', '222-333-4444'),
(5, 'Michael Brown', 'michael.brown@example.com', '333-444-5555');

INSERT INTO Club (cid, cname, cdescription) VALUES
(4, 'French Literature Club', 'A club for lovers of French literature.'),
(5, 'Chinese Student Association', 'Association for Chinese students.'),
(6, 'Japanese Student Association', 'Association for Japanese students.');

INSERT INTO Event (eid, ename, edescription, edate, memprice, nonmemprice, maxpeople) VALUES
(4, 'French Poetry Reading', 'Reading and discussion of French poetry.', '2023-04-25', 0.00, 5.00, 30),
(5, 'Cultural Exchange Meetup', 'Meetup event by Chinese and Japanese Student Associations.', '2023-08-15', 15.00, 25.00, 150);

INSERT INTO Membership (sid, cid, semester, year, memberfee) VALUES
(4, 4, 'Spring', 2023, 5.00),
(5, 5, 'Fall', 2022, 15.00),
(1, 6, 'Fall', 2022, 15.00);

INSERT INTO HoldsEvent (eid, cid) VALUES
(4, 4),
(5, 5),
(5, 6); -- Event 5 is jointly held by CID 5 and 6

INSERT INTO Register (eid, sid, price, rating) VALUES
(4, 4, 0.00, 5),
(5, 1, 25.00, 3),
(5, 5, 25.00, 5);



INSERT INTO Student (sid, sname, semail, sphone) VALUES
(6, 'Lucas Gray', 'lucas.gray@example.com', '444-555-6666'),
(7, 'Emma Wilson', 'emma.wilson@example.com', '555-666-7777');


INSERT INTO Membership (sid, cid, semester, year, memberfee) VALUES
(6, 1, 'Spring', 2023, 10.00), -- Lucas is a member of the Chess Club
(7, 2, 'Spring', 2023, 20.00); -- Emma is a member of the Literature Club


INSERT INTO Register (eid, sid, price, rating) VALUES
(5, 6, 25.00, 5), -- Lucas attended the event
(5, 7, 25.00, 5); -- Emma attended the event
