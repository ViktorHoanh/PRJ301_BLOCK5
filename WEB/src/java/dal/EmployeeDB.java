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
import model.Employee;

/**
 *
 * @author Admin
 */
public class EmployeeDB {

    public Employee getEmployeebyid(int eid) {
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Employee WHERE eid =?";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, eid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Employee e = new Employee();
                e.setEid(rs.getInt("eid"));
                e.setEname(rs.getString("ename"));
                e.setPid(rs.getString("pid"));
                return e;
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

    public ArrayList<Employee> getAllEmployee() {
        ArrayList<Employee> employee = new ArrayList<>();
        Connection conn = new DBContext().connection;
        String sql = "SELECT * FROM Employee";
        try ( PreparedStatement st = conn.prepareStatement(sql)) {
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                employee.add(getEmployeebyid(rs.getInt("eid")));
            }
        } catch (SQLException ex) {
        } finally {
            try {
                conn.close();
            } catch (Exception ex) {
            }
        }
        return employee;
    }

}
