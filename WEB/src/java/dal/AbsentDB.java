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
import model.Absent;
import model.Employee;

/**
 *
 * @author Admin
 */
public class AbsentDB {
    public Absent getAbsentbyid(int eid) {
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Absent WHERE eid =?";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, eid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {                
                Absent a = new Absent();
                a.setEid(rs.getInt("eid"));
                a.setFromdate(rs.getDate("fromdate"));
                a.setTodate(rs.getDate("todate"));
                a.setReason(rs.getString("reason"));
                a.setIsCheck(rs.getBoolean("isCheck"));
                return a;
            }
        } catch (SQLException ex) {
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return null;
    }

    public ArrayList<Absent> getAllAbsent() {
        ArrayList<Absent> absent = new ArrayList<>();
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Absent";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                 absent.add(getAbsentbyid(rs.getInt("eid")));
            }
        } catch (SQLException ex) {
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return absent;
    }
}
