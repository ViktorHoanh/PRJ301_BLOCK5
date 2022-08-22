/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

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

    public List<Timesheet> getTimeSheet(int eid,int month) {
        List<Timesheet> timesheet = new ArrayList<>();
        Connection conn = new DBContext().connection;
        String sql = "SELECT e.ename,pname,t.date,t.status FROM Employee e JOIN Position p ON e.pid = p.pid\n"
                + "                         JOIN Timesheet t ON e.eid = t.eid\n"
                + "						 WHERE e.eid = '?' AND MONTH(t.date) = ?";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {       
            st.setInt(1, eid);
            st.setInt(2, month);
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

}
