/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.Model;

import bkap.Connection.PJConnectionDB;
import bkap.Entity.Product;
import bkap.Entity.ProductParent;
import bkap.Entity.Slide;
import bkap.Entity.Trademark;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ScorPius 31
 */
public class PJModel {
    public List<Slide> getAllSlide(){
        Connection conn=null;
        CallableStatement call=null;
        List<Slide> listSlide=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getSlide()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Slide slide=new Slide();
                slide.setSlideId(rs.getString("SlideId"));
                slide.setSlideImage(rs.getString("SlideImage"));
                slide.setUuTien(rs.getInt("SlideUuTien"));
                slide.setStatus(rs.getBoolean("SlideStatus"));
                listSlide.add(slide);
            }
        } catch (Exception e){
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listSlide;
    }
    
    public List<ProductParent> getProductParent(){
        Connection conn=null;
        CallableStatement call=null;
        List<ProductParent> listProductParent=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTitleDmc()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                ProductParent pro=new ProductParent();
                pro.setParentId(rs.getString("Ma_danh_muc"));
                pro.setParentName(rs.getString("Ten_danh_muc"));
                pro.setDouutien(rs.getInt("Do_uu_tien"));
                pro.setLink(rs.getString("Link"));
                pro.setStatus(rs.getBoolean("Trang_thai"));
                listProductParent.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listProductParent;
    }
    
    public List<Product> getAllProduct(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listAll=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getALlProduct()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));               
                listAll.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listAll;
    }
    
    public List<Product> getProductHot(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listPro=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getProductHot()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));
                listPro.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listPro;
    }
    
    public List<Product> getProductNew(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listProNew=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getProductNew()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));
                listProNew.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listProNew;
    }
    
    public List<Product> getProductSell(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listProSell=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getProductSell()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));
                listProSell.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listProSell;
    }
    
    public List<Product> getProductSale(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listProSale=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getProductSale()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));
                listProSale.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listProSale;
    }
    
    public List<Trademark> getTrademark(){
        Connection conn=null;
        CallableStatement call=null;
        List<Trademark> listTrademark=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademark()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Trademark pro=new Trademark();
                pro.setSupplierId(rs.getString("Ma_nha_cung_cap"));
                pro.setSupplierName(rs.getString("Ten_nha_cung_cap"));
                pro.setSupplierAdress(rs.getString("Dia_chi"));
                pro.setSupplierPhonel(rs.getInt("So_dien_thoai"));
                pro.setFax(rs.getString("So_fax"));
                pro.setLink(rs.getString("Link"));
                listTrademark.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademark;
    }
    
    public List<Product> getTrademarkPhap(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkPhap=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkPhap()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkPhap.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkPhap;
    }
    
    public List<Product> getTrademarkMi(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkMi=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkMi()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkMi.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkMi;
    }
    
    public List<Product> getTrademarkAnh(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkAnh=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkAnh()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkAnh.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkAnh;
    }
    
    public List<Product> getTrademarkDuc(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkDuc=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkDuc()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkDuc.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkDuc;
    }
    
    public List<Product> getTrademarkTayBanNha(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkTayBanNha=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkTayBanNha()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkTayBanNha.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkTayBanNha;
    }
    
    public List<Product> getTrademarkNga(){
        Connection conn=null;
        CallableStatement call=null;
        List<Product> listTrademarkNga=new ArrayList<>();
        try {
            conn=PJConnectionDB.openDataBase();
            call=conn.prepareCall("{call getTrademarkNga()}");
            ResultSet rs=call.executeQuery();
            while(rs.next()){
                Product pro=new Product();
                pro.setProductId(rs.getString("Ma_san_pham"));
                pro.setProductImage(rs.getString("Hinh_anh"));
                pro.setProductName(rs.getString("Ten_san_pham"));
                pro.setPrice(rs.getFloat("Don_gia"));                
                listTrademarkNga.add(pro);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            PJConnectionDB.closeDataBase(conn, call);
        }
        return listTrademarkNga;
    }
    
    public static void main(String[] args) {
        PJModel proModel = new PJModel();
        List<Product> listPJSaleIteam = proModel.getProductSell();
        for (Product pro : listPJSaleIteam) {
            System.out.println("Ma SP: " + pro.getProductName());
            System.out.println("Ten SP: " + pro.getProductImage());
            System.out.println("Image: " + pro.getPrice());
            System.out.println("Image: " + pro.getProductId());
             
        }
    }  
}
