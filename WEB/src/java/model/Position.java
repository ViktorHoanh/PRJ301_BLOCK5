/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Position {
    private String pid;
    private String pname;
    private double basesalary;
    private double allowancesalary;
    private double insurance;

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getBasesalary() {
        return basesalary;
    }

    public void setBasesalary(double basesalary) {
        this.basesalary = basesalary;
    }

    public double getAllowancesalary() {
        return allowancesalary;
    }

    public void setAllowancesalary(double allowancesalary) {
        this.allowancesalary = allowancesalary;
    }

    public double getInsurance() {
        return insurance;
    }

    public void setInsurance(double insurance) {
        this.insurance = insurance;
    }

    public Position() {
    }

    public Position(String pid, String pname, double basesalary, double allowancesalary, double insurance) {
        this.pid = pid;
        this.pname = pname;
        this.basesalary = basesalary;
        this.allowancesalary = allowancesalary;
        this.insurance = insurance;
    }
    
    
}
