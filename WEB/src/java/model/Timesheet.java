/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.TimeSheet;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Timesheet {

    private int tid;
    private int eid;
    private Date date;
    private int status;
    
//    private ArrayList<TimeSheet> time = new ArrayList<>();
//
//    public ArrayList<TimeSheet> getTimesheets() {
//        return time;
//    }
//
//    public void setTimesheets(ArrayList<TimeSheet> timesheets) {
//        this.time = timesheets;
//    }
//    
//    public int getNumberOfWorkingDays()
//    {
//        return time.size();
//    }

    public Timesheet() {
    }

    public Timesheet(int tid, int eid, Date date, int status) {
        this.tid = tid;
        this.eid = eid;
        this.date = date;
        this.status = status;
    }

    public int getTid() {
        return tid;
    }

    public void setTid(int tid) {
        this.tid = tid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }


   

}
