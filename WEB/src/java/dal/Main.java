/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.List;
import model.Employee;
import model.Timesheet;

/**
 *
 * @author Admin
 */
public class Main {

//    public static void main(String[] args) {
//        EmployeeDB db = new EmployeeDB();
//        ArrayList<Employee> employees = db.getAllEmployee();
//        for( Employee e : employees ){
//            System.out.println("eid:"+e.getEid()+"ename:"+e.getEname()+"pid:"+e.getPid());           
//        }
//          
//    }
    
        public static void main(String[] args) {
        TimeSheet ts = new TimeSheet();
          List<Timesheet> timesheet = ts.getTimeSheet(1, 2);
          for (Timesheet t : timesheet) {
              System.out.println(t.getDate());
        }
    }

}
