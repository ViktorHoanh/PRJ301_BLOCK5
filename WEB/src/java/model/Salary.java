/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Salary {
    private int eid;
    private int pid;
    private double tongthunhap;
    private double thuclinh;

    public Salary() {
    }

    public Salary(int eid, int pid, double tongthunhap, double thuclinh) {
        this.eid = eid;
        this.pid = pid;
        this.tongthunhap = tongthunhap;
        this.thuclinh = thuclinh;
    }

    
    public double getTongthunhap() {
        return tongthunhap;
    }

    public void setTongthunhap(double tongthunhap) {
        this.tongthunhap = tongthunhap;
    }

    public double getThuclinh() {
        return thuclinh;
    }

    public void setThuclinh(double thuclinh) {
        this.thuclinh = thuclinh;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "Salary{" + "eid=" + eid + ", pid=" + pid + ", tongthunhap=" + tongthunhap + ", thuclinh=" + thuclinh + '}';
    }

    
    
    
}
