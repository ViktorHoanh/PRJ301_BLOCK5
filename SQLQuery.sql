--get timesheet by month--

SELECT * FROM Employee e, Position p, Timesheet t
WHERE e.pid = p.pid AND e.eid = t.eid AND MONTH(t.date) = 1
--get Employee--
SELECT * FROM Employee
                                                             
--Get absent--
SELECT e.eid,e.ename,a.fromdate,a.todate,a.reason,a.isCheck  
FROM Employee e LEFT JOIN Absent a ON e.eid = a.eid
WHERE e.eid != '1'

--Get status--
SELECT t.status FROM Timesheet t WHERE t.eid = '1' AND t.date = '2022-01-01'

--Get salary --
 SELECT e.eid,e.ename,p.pname,p.basesalary,p.allowancesalary,p.insurance FROM Employee e LEFT JOIN Position p ON e.pid = p.pid


