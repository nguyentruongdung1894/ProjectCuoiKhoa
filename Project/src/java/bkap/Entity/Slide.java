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
public class Slide {
    private String slideId;
    private String slideImage;
    private int uuTien;
    private boolean status;

    public Slide() {
    }

    public Slide(String slideId, String slideImage, int uuTien, boolean status) {
        this.slideId = slideId;
        this.slideImage = slideImage;
        this.uuTien = uuTien;
        this.status = status;
    }

    public String getSlideId() {
        return slideId;
    }

    public void setSlideId(String slideId) {
        this.slideId = slideId;
    }

    public String getSlideImage() {
        return slideImage;
    }

    public void setSlideImage(String slideImage) {
        this.slideImage = slideImage;
    }

    public int getUuTien() {
        return uuTien;
    }

    public void setUuTien(int uuTien) {
        this.uuTien = uuTien;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    
}
