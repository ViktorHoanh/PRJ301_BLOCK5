-- Get employee -- 
SELECT e.eid, e.ename, t.tid, t.date FROM Employee e LEFT JOIN Timesheet t ON e.eid = t.eid WHERE e.eid = '1'

--Get absent--
SELECT e.eid,e.ename,a.fromdate,a.todate,r.reason,r.isCheck  FROM Employee e LEFT JOIN Absent a ON e.eid = a.eid
                                                          LEFT JOIN Reason r ON a.reid = r.reid
														  WHERE e.eid != '1'

--Get status--
SELECT t.status FROM Timesheet t WHERE t.eid = '1' AND t.date = '2022-01-01'

--Get salary --
 SELECT e.eid,e.ename,p.pname,p.basesalary,p.allowancesalary,p.insurance FROM Employee e LEFT JOIN Position p ON e.pid = p.pid