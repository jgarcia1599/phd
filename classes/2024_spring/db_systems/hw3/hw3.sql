-- 1. For each student, output the number of events the student registered for in
-- Fall 2023. (Hint: As there may be students attending 0 events, a natural
-- join is not enough.

SELECT
    Student.sid,
    Student.sname,
    COALESCE(COUNT(DISTINCT Register.eid), 0) AS num_event -- coalesce to do 0 instead of null if a student has 0 events
-- sereies of left joins to ensure all students are preserved, even those without any events
FROM
    Student
LEFT JOIN
    Register ON Student.sid = Register.sid
LEFT JOIN
    HoldsEvent ON HoldsEvent.eid = Register.eid
LEFT JOIN
    Membership ON Student.sid = Membership.sid AND HoldsEvent.cid = Membership.cid
WHERE
    (Membership.semester = 'Fall' AND Membership.year = 2023) OR Membership.sid IS NULL
GROUP BY
-- attributes in select clause outside of aggregate functions must appear in groupby list
    Student.sid, Student.sname;


-- 2. Output the name of the club that has the greatest increase in member fees
-- in Spring 2024 compared with Fall 2023.
CREATE VIEW FeeDifference AS
SELECT
  Fall.cid,
  (Spring.memberfee - Fall.memberfee) AS fee_increase
FROM
  Membership Spring
JOIN
  Membership Fall ON Spring.cid = Fall.cid
WHERE
  Spring.semester = 'Spring' AND Spring.year = 2024 AND
  Fall.semester = 'Fall' AND Fall.year = 2023;

SELECT
    Club.cname
FROM
    Club
JOIN
    FeeDifference ON Club.cid = FeeDifference.cid
WHERE
    FeeDifference.fee_increase = (SELECT MAX(fee_increase) FROM FeeDifference);


-- 3. Output the id, name, and date of the event co-organized by the largest
-- number of clubs.

SELECT
    Event.eid,
    Event.ename,
    Event.edate,
    COUNT(Club.cid) AS num_clubs
FROM
    Event
JOIN
    HoldsEvent ON Event.eid = HoldsEvent.eid
JOIN
    Club ON HoldsEvent.cid = Club.cid
GROUP BY
    Event.eid, Event.ename, Event.edate
ORDER BY
    num_clubs DESC
LIMIT 1;


-- 4. Output the id and name of the events held in Fall 2023 that have a number
-- of attendees equal to its maximum people allowance.
SELECT 
  e.eid, 
  e.ename 
FROM 
  Event e
JOIN 
  HoldsEvent he ON e.eid = he.eid
LEFT JOIN 
  Register r ON e.eid = r.eid
WHERE 
  e.edate BETWEEN '2023-09-01' AND '2023-12-31'
GROUP BY 
  e.eid, e.ename, e.maxpeople
HAVING 
  COUNT(r.sid) = e.maxpeople;


-- 5. Fill in the blanks in following query to output the IDs and names of students
-- (other than Bob) who belonged in Fall 2023 to all of the clubs that ‘Bob’
-- (sid 12345) belonged to that semester:

-- Method 1:

SELECT s.sid, s.sname FROM Student s
where s.sid <> 12345
AND NOT EXISTS -- not exists is true when it doesnt return any rows
(
-- Bob’s 2023 clubs EXCEPT this student’s clubs
SELECT * From Membership
where sid = 12345 AND semester = 'Fall' AND year = 2023
AND cid NOT in
-- Bob’s F’23 clubs
(SELECT cid FROM Membership
where sid= s.sid AND semester = 'Fall' AND year = 2023));

-- Method 2:
SELECT s.sid, s.sname FROM Student s
WHERE s.sid <> 12345
AND
( -- number of clubs Bob is in during Fall 2023
SELECT COUNT(*)
FROM Membership m
WHERE m.sid = 12345 AND m.semester = 'Fall' AND m.year = 2023)
=
(
-- number of clubs Bob and current student are both in during Fall 2023
SELECT COUNT(*)
FROM Membership m1 JOIN Membership m2 ON m1.cid = m2.cid
WHERE m1.semester = 'Fall' AND m1.year = 2023
AND m2.semester = 'Fall' AND m2.year = 2023
AND m1.sid = 12345 AND m2.sid = s.sid);



-- 6. Output the sid, sname, cid, cname, for each student and club such that the student has been a member of the club every semester since Fall 2023.

SELECT
    s.sid,
    s.sname,
    c.cid,
    c.cname 
FROM
    Student s
JOIN    
    Membership m ON s.sid = m.sid
JOIN
    Club c ON m.cid = c.cid
WHERE
    (m.year > 2023 OR (m.year = 2023 AND m.semester = 'Fall'))
GROUP BY
    s.sid, s.sname, c.cid, c.cname
HAVING
    COUNT(DISTINCT CONCAT(m.year, m.semester)) = 
    (SELECT COUNT(DISTINCT CONCAT(year, semester)) FROM Membership WHERE year > 2023 OR (year = 2023 AND semester = 'Fall'));

-- 7. Output the id and name of the club that either hasn’t held an event or held
-- an event that no one registered for.
SELECT
    c.cid,
    c.cname
FROM
    Club c
LEFT JOIN
    HoldsEvent he ON c.cid = he.cid
LEFT JOIN
    Register r ON he.eid = r.eid
GROUP BY
    c.cid, c.cname
HAVING
    COUNT(he.eid) = 0 OR COUNT(DISTINCT r.eid) = 0;


-- 8. Output the id and name of the club that has the highest average rating of
-- events held in Fall 2023.
SELECT 
    c.cid, 
    c.cname, 
    AVG(r.rating) as avg_rating
FROM 
    Club c
JOIN 
    HoldsEvent he ON c.cid = he.cid
JOIN 
    Event e ON he.eid = e.eid AND e.edate BETWEEN '2023-09-01' AND '2023-12-31'
JOIN 
    Register r ON e.eid = r.eid
GROUP BY 
    c.cid, c.cname
ORDER BY 
    avg_rating DESC
LIMIT 1;