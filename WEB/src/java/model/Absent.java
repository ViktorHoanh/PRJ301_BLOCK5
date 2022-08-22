/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class Absent {
    private int abid;
    private int eid;
    private Date fromdate;
    private Date todate;
    private String reason;
    private boolean isCheck;

    public Absent() {
    }

    public Absent(int abid, int eid, Date fromdate, Date todate, String reason, boolean isCheck) {
        this.abid = abid;
        this.eid = eid;
        this.fromdate = fromdate;
        this.todate = todate;
        this.reason = reason;
        this.isCheck = isCheck;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public boolean isIsCheck() {
        return isCheck;
    }

    public void setIsCheck(boolean isCheck) {
        this.isCheck = isCheck;
    }

    

    public int getAbid() {
        return abid;
    }

    public void setAbid(int abid) {
        this.abid = abid;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

  

    public Date getFromdate() {
        return fromdate;
    }

    public void setFromdate(Date fromdate) {
        this.fromdate = fromdate;
    }

    public Date getTodate() {
        return todate;
    }

    public void setTodate(Date todate) {
        this.todate = todate;
    }
    
    
}
