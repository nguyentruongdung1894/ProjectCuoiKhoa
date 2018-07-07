/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.Entity;

/**
 *
 * @author ScorPius 31
 */
public class ProductParent {
    private String parentId;
    private String parentName;
    private int douutien;
    private String link;
    private boolean status;

    public ProductParent() {
    }

    public ProductParent(String parentId, String parentName, int douutien, String link, boolean status) {
        this.parentId = parentId;
        this.parentName = parentName;
        this.douutien = douutien;
        this.link = link;
        this.status = status;
    }

    

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    public int getDouutien() {
        return douutien;
    }

    public void setDouutien(int douutien) {
        this.douutien = douutien;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
    
    
}
