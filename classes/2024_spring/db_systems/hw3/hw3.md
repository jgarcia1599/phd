1. For each student, output the number of events the student registered for in
Fall 2023. (Hint: As there may be students attending 0 events, a natural
join is not enough.




```sql
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


```

3. Output the id, name, and date of the event co-organized by the largest
number of clubs.

```sql
SELECT
    eid,
    ename,
    edate,
    COUNT(cid) AS num_clubs
FROM
    Event
JOIN
    HoldsEvent ON Event.eid = HoldsEvent.eid
JOIN
    Club ON HoldsEvent.cid = Club.cid
GROUP BY
    eid, ename, edate
ORDER BY
    num_clubs DESC
LIMIT 1;
```

```sql

-- SELECT
--     e.eid,
--     e.ename,
--     e.edate
-- FROM
--     Event e
-- INNER JOIN
--     (SELECT
--          eid,
--          COUNT(cid) AS num_clubs
--      FROM
--          HoldsEvent
--      GROUP BY
--          eid) AS event_club_count ON e.eid = event_club_count.eid
-- WHERE
--     event_club_count.num_clubs = (SELECT MAX(num_clubs) FROM (SELECT COUNT(cid) AS num_clubs FROM HoldsEvent GROUP BY eid) AS counts)



```




5. Fill in the blanks in following query to output the IDs and names of students
(other than Bob) who belonged in Fall 2023 to all of the clubs that ‘Bob’
(sid 12345) belonged to that semester:
Method 1:
```sql

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
where sid= s.sid AND semester = 'Fall' AND year = 2023))
```



```sql 
Method 2:
SELECT s.sid, s.sname FROM Student s
where s.sid <> 12345
AND
( -- number of clubs Bob is in during Fall 2023
SELECT COUNT(*)
FROM Membership where sid = 12345)
=
(
-- number of clubs Bob and current student are both in during Fall 2023
SELECT COUNT(*)
FROM Membership AS m1 JOIN Membership AS m2 USING (cid,
semester, year)
where semester = 'Fall' AND year = 2023 AND m2.sid = s.sid) 


```


7. 


```sql

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
    COUNT(he.eid) = 0 OR COUNT(r.sid) = 0;




```