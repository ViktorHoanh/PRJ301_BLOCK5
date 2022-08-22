/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.TimeSheet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Employee {

    private int eid;
    private String ename;
    private String pid;
    
    
    public Employee() {
    }

    public Employee(int eid, String ename, String pid) {
        this.eid = eid;
        this.ename = ename;
        this.pid = pid;
    }
    
    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }


}
