/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import helper.DateTimeHelper;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import model.Timesheet;

/**
 *
 * @author Admin
 */
public class EmployeeDBContext extends DBContext {

//    public ArrayList<Employee> getEmployees(Date begin, Date end) {
//        ArrayList<Employee> employees = new ArrayList<>();
//        try {
//            String sql = "SELECT e.eid, e.ename,t.tid, t.date,t.status FROM Employee e LEFT JOIN (SELECT * FROM Timesheet WHERE date >= '?' AND date <= '?' ) t ON e.eid = t.eid ";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setTimestamp(1, DateTimeHelper.getTimeStamp(DateTimeHelper.removeTime(begin)));
//            stm.setTimestamp(2, DateTimeHelper.getTimeStamp(DateTimeHelper.removeTime(end)));
//            ResultSet rs = stm.executeQuery();
//            Employee curEmp = new Employee();
//            curEmp.setEid(-1);
//            while (rs.next()) {
//                int eid = rs.getInt("eid");
//                if (eid != curEmp.getEid()) {
//                    curEmp = new Employee();
//                    curEmp.setEid(eid);
//                    curEmp.setEname(rs.getString("ename"));
//                    employees.add(curEmp);
//                }
//                int tid = rs.getInt("tid");
//                if (tid != -1) {
//                    Timesheet t = new Timesheet();
//                    t.setEmployee(curEmp);
//                    t.setEid(tid);
////                    t.setDate(DateTimeHelper.getDateFrom(rs.getTimestamp("date")));
//                    curEmp.getTimesheet().add(t);
//                }
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return employees;
        public ArrayList<Employee> getEmployees(){
           ArrayList<Employee> employees = new ArrayList<>();
            try {
                String sql = "SELECT e.eid, e.ename,t.tid, t.date,t.status FROM Employee e LEFT JOIN (SELECT * FROM Timesheet WHERE date >= '?' AND date <= '?' ) t ON e.eid = t.eid ";
                PreparedStatement stm = connection.prepareStatement(sql);
                ResultSet rs = stm.executeQuery();
                while (rs.next()) {
                    Employee e = new Employee(rs.getInt("eid"), rs.getString("ename"), rs.getString("pid")); ;
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
            return null;
        }
    }
