Problem 1A

(i) Find all Events that are held by the “French Literature Club” and allow
more than 10 people to attend.
(ii) List students’ names along with all the clubs that held events the
student has taken in 2023 and spent less than 10$ to register.
(iii) List students’ names along with all the events that they attended as
non-member.
(iv) List students along with all their membership clubs in 2022 Fall whose
membership cost is lower than 20$.
(v) Output the name of any club that has never held an event with any
rating below 4


1.1
```sql
select  *
from (Event natural join HoldsEvent) natural join Club
where cname = 'French Literature Club' and maxpeople > 10;
```

1.2

```sql
select distinct sname, cname
from ((((Student natural join Register) 
natural join Event)
natural join HoldsEvent)
natural join Club)
where Event.edate between '2023-01-01' and '2023-12-31'
and Register.price < 10;
```

1.3 
```sql
select distinct sname, ename
from Student natural join Register 
natural join Event
where Register.price = Event.nonmemprice;
```

1.4

```sql

select sname,cname
from Student natural join Membership natural join Club
where memberfee < 20 and semester = 'Fall' and year = 2022;

```

1.5

    
```sql
select distinct cname
from Club natural join HoldsEvent natural join Event natural join Register
where rating >= 4;



```


1.6 

```sql
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
```


Problem 1B

```sql
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
```


sele
Problem 4



4.1

```sql

select 

```

