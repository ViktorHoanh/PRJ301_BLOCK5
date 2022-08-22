/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import helper.DateTimeHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Timesheet;

/**
 *
 * @author Admin
 */
public class TimeSheet {

    public List<Timesheet> getTimeSheet(String month) {
        List<Timesheet> timesheet = new ArrayList<>();
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Employee e, Position p, Timesheet t\n"
                + "WHERE e.pid = p.pid AND e.eid = t.eid AND MONTH(t.date) = ?";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, month);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Timesheet t = new Timesheet();
                t.setEid(rs.getInt("eid"));
                t.setDate(rs.getDate("date"));
                t.setStatus(rs.getInt("status"));
                timesheet.add(t);
                
                
            }
        } catch (SQLException ex) {
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return timesheet;
    }
  
//    public List<Timesheet> getTimeTotalWorkingById(String month) {
//        List<Timesheet> timesheet = new ArrayList<>();
//        Connection conn = new DBContext().connection;
//       String sql = "select COUNT(Timesheet.status) as status\n" +
//"                    from Timesheet\n" +
//"                    where Timesheet.status = '1' AND Timesheet.eid = 1 AND MONTH(Timesheet.date) = ?";
//        try ( PreparedStatement st = conn.prepareStatement(sql)) {
//            st.setString(1, month);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                Timesheet t = new Timesheet();
//                t.setStatus(rs.getInt("status"));
//                timesheet.add(t);              
//            }
//        } catch (SQLException ex) {
//        } finally {
//            try {
//                conn.close();
//            } catch (Exception ex) {
//            }
//        }
//        return null;
//    }
       

}
