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
public class Trademark {
    private String supplierId;
    private String supplierName;
    private String supplierAdress;
    private int supplierPhonel;
    private String fax;
    private String link;

    public Trademark() {
    }

    public Trademark(String supplierId, String supplierName, String supplierAdress, int supplierPhonel, String fax, String link) {
        this.supplierId = supplierId;
        this.supplierName = supplierName;
        this.supplierAdress = supplierAdress;
        this.supplierPhonel = supplierPhonel;
        this.fax = fax;
        this.link = link;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public String getSupplierAdress() {
        return supplierAdress;
    }

    public void setSupplierAdress(String supplierAdress) {
        this.supplierAdress = supplierAdress;
    }

    public int getSupplierPhonel() {
        return supplierPhonel;
    }

    public void setSupplierPhonel(int supplierPhonel) {
        this.supplierPhonel = supplierPhonel;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }
    
    
}
