-- 1.A.i Find all Events that are held by the “French Literature Club” and allow more than 10 people to attend.
select  *
from (Event natural join HoldsEvent) natural join Club
where cname = 'French Literature Club' and maxpeople > 10;


-- 1.A.ii List students’ names along with all the clubs that held events the student has taken in 2023 and spent less than 10\$ to register.
select distinct sname, cname
from ((((Student natural join Register) 
natural join Event)
natural join HoldsEvent)
natural join Club)
where Event.edate between '2023-01-01' and '2023-12-31'
and Register.price < 10;

-- 1.A.iii  List students’ names along with all the events that they attended as non-member.
select distinct sname, ename
from Student natural join Register 
natural join Event
where Register.price = Event.nonmemprice;

-- 1.A.iv List students along with all their membership clubs in 2022 Fall whose membership cost is lower than 20\$.

select sname,cname
from Student natural join Membership natural join Club
where memberfee < 20 and semester = 'Fall' and year = 2022;

-- 1.A.v Output the name of any club that has never held an event with any rating below 4.

select distinct cname
from Club natural join HoldsEvent natural join Event natural join Register
where rating >= 4;

-- 1.A.vi Output the name of any student who has attended an event jointly organized by the Chinese and Japanese Student Associations while not being a member of either one.
select distinct S.sname
from Student S
join Register R on S.sid = R.sid
where exists (
    -- Check for event organized by the Chinese Student Association
    select 1
    from HoldsEvent HE
    join Club C on HE.cid = C.cid
    where HE.eid = R.eid -- makess ure it matches with the outside query
    and C.cname = 'Chinese Student Association'
)
and exists (
    -- Check for the same event also organized by the Japanese Student Association
    select 1
    from HoldsEvent HE
    join Club C on HE.cid = C.cid
    where HE.eid = R.eid -- makess ure it matches with the outside query
    and C.cname = 'Japanese Student Association'
)
and not exists (
    -- Ensure the student is not a member of either club
    select 1
    from Membership M
    join Club C on M.cid = C.cid
    where M.sid = S.sid -- makess ure it matches with the outside query
    and C.cname in ('Chinese Student Association', 'Japanese Student Association')
);

-- 1.B Write the queries for creating all tables for this database. You may assume any reasonable domains for the attributes.

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

-- Problem 4

-- 1. list all rides in the theme park with the title magic kingdom park located at bay lake.
select RideTitle 
from Ride
natural join Locate
where ParkTitle = 'MagicKingdomPark' and Addr = 'Bay Lake';

-- 2. list all tourists who were born in 2001.
select first_name, last_name 
from Tourist 
where year(DOB) = 2001;

-- 3. list the names and emails of tourists who have visited disney’s hollywood studios located at bay lake.
select first_name, last_name, Email 
from Tourist 
natural join Visit
where ParkTitle = 'Disney''sHollywoodStudios' and Addr = 'Bay Lake';

-- 4. list the names of tourists whose favorite rides have a waiting time longer than 30 minutes.
select first_name, last_name 
from Tourist 
natural join Favorite
natural join Ride
where Avg_wt > 30;

-- 5. list the names of tourists who give a non-5 star to the theme park where their favorite rides are located.
select first_name, last_name 
from Tourist 
natural join Favorite
natural join ThemePark
natural join Visit
where Stars != 5;




