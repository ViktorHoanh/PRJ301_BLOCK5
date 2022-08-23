/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class Working {
    private int eid;
    private int ngaycong;
    private int congchunhat;
    private int huongluong100;
    private int huongluong50;
    private int tongcong;

    public Working() {
    }

    public Working(int eid, int ngaycong, int congchunhat, int huongluong100, int huongluong50, int tongcong) {
        this.eid = eid;
        this.ngaycong = ngaycong;
        this.congchunhat = congchunhat;
        this.huongluong100 = huongluong100;
        this.huongluong50 = huongluong50;
        this.tongcong = tongcong;
    }
    
    
    
    
    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getNgaycong() {
        return ngaycong;
    }

    public void setNgaycong(int ngaycong) {
        this.ngaycong = ngaycong;
    }

    public int getCongchunhat() {
        return congchunhat;
    }

    public void setCongchunhat(int congchunhat) {
        this.congchunhat = congchunhat;
    }

    public int getHuongluong100() {
        return huongluong100;
    }

    public void setHuongluong100(int huongluong100) {
        this.huongluong100 = huongluong100;
    }

    public int getHuongluong50() {
        return huongluong50;
    }

    public void setHuongluong50(int huongluong50) {
        this.huongluong50 = huongluong50;
    }

    public int getTongcong() {
        return tongcong;
    }

    public void setTongcong(int tongcong) {
        this.tongcong = tongcong;
    }

    @Override
    public String toString() {
        return "Working{" + "eid=" + eid + ", ngaycong=" + ngaycong + ", congchunhat=" + congchunhat + ", huongluong100=" + huongluong100 + ", huongluong50=" + huongluong50 + ", tongcong=" + tongcong + '}';
    }

    

    

    

            
            
}
