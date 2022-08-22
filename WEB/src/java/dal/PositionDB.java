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
import model.Position;

/**
 *
 * @author Admin
 */
public class PositionDB {
    public Position getPositionbyid(int pid) {
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Position WHERE pid =?";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Position p = new Position();
                p.setPid(rs.getString("pid"));
                p.setPname(rs.getString("pname"));
                p.setBasesalary(rs.getDouble("basesalary"));
                p.setAllowancesalary(rs.getDouble("allowancesalary"));
                p.setInsurance(rs.getDouble("insurance"));
                return p;
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
    public ArrayList<Position> getAllPosition() {
        ArrayList<Position> position = new ArrayList<>();
        Connection conn = new DBContext().connection;
        String sql = " SELECT * FROM Position";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                position.add(getPositionbyid(rs.getInt("pid")));
            }
        } catch (SQLException ex) {
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return position;
    }
}
