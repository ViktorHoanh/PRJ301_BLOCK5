/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import model.Absent;
import model.Employee;
import model.Position;
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
//        public static void main(String[] args) {
//           TimeSheet ts = new TimeSheet();
//          List<Timesheet> timesheet = ts.getTimeSheet(1,2);
//          for (Timesheet t : timesheet) {
//              System.out.println("eid"+t.getEid()+"date"+t.getDate()+"status"+t.getStatus());
//        }
//    }
//    public static void main(String[] args) {
//        Calendar calendar = Calendar.getInstance();
//        System.out.println("YEAR: " + calendar.get(Calendar.YEAR));
//        System.out.println("MONTH: " + calendar.get(Calendar.MONTH));
//        System.out.println("DAY: " + calendar.get(Calendar.DATE));
//        System.out.println("DAY_OF_WEEK: " + calendar.get(Calendar.DAY_OF_WEEK));
//    }
//    public static void main(String[] args) {
//        PositionDB db = new PositionDB();
//        ArrayList<Position> position = db.getAllPosition();
//        for (Position p : position) {
//           System.out.println("pid:" + p.getPid() + "pname:" + p.getPname() + "base:" + p.getBasesalary() + "allowance" + p.getAllowancesalary() + "insurance" + p.getInsurance());
//        }
//    }
    public static void main(String[] args) {
        AbsentDB db = new AbsentDB();
        ArrayList<Absent> absent = db.getAllAbsent();
        for (Absent ab : absent) {
            System.out.println("eid"+ab.getEid()+" "+ab.getFromdate()+" "+ab.getTodate()+" "+ab.getReason());
        }
    }
}