/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.Controller;

import bkap.Entity.Product;
import bkap.Entity.ProductParent;
import bkap.Entity.Slide;
import bkap.Entity.Trademark;
import bkap.Model.PJModel;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author ScorPius 31
 */
@Controller
@RequestMapping(value = "/home")
public class PJController {
    private final PJModel pjmodel;

    public PJController() {
        pjmodel=new PJModel();
    }
    
    @RequestMapping(value = "/index")
    public ModelAndView getProductHot(){
        ModelAndView model=new ModelAndView("index");
        List<Slide> listSlide=pjmodel.getAllSlide();
        List<Product> listProductHot=pjmodel.getProductHot();
        List<Product> listProductNew=pjmodel.getProductNew();
        List<Product> listProductSell=pjmodel.getProductSell();
        List<Product> listProductSale=pjmodel.getProductSale();
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        model.addObject("listProductHot", listProductHot);
        model.addObject("listProductNew", listProductNew);
        model.addObject("listProductSell", listProductSell);
        model.addObject("listProductSale", listProductSale);
        model.addObject("listSlide", listSlide);
        model.addObject("listProductParent", listProductParent);
        return model;
    }   
    
    @RequestMapping(value = "/about")
    public ModelAndView getAbout(){
        ModelAndView model=new ModelAndView("about");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        model.addObject("listProductParent", listProductParent);
        return model;
    }
    
    @RequestMapping(value = "/product")
    public ModelAndView getProduct(){
        ModelAndView model=new ModelAndView("product");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listProduct=pjmodel.getAllProduct();  
        List<Trademark> listTrademark=pjmodel.getTrademark();  
        model.addObject("listProductParent", listProductParent);
        model.addObject("listProduct", listProduct);  
        model.addObject("listTrademark", listTrademark);  
        return model;
    }
    
    @RequestMapping(value = "/new")
    public ModelAndView getNew(){
        ModelAndView model=new ModelAndView("new");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        model.addObject("listProductParent", listProductParent);
        return model;
    }
    
    @RequestMapping(value = "/contact")
    public ModelAndView getContact(){
        ModelAndView model=new ModelAndView("contact");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        model.addObject("listProductParent", listProductParent);
        return model;
    }
     
    @RequestMapping(value = "/getTrademarkById")
    public ModelAndView getTrademarkById(int TrademarkById){
        ModelAndView model=new ModelAndView("getTrademarkById");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        List<Product> listTrademarkById=pjmodel.getTrademarkById(TrademarkById);
        model.addObject("listProductParent", listProductParent);
        model.addObject("listTrademark", listTrademark); 
        model.addObject("listTrademarkById", listTrademarkById);
        return model;
    }
    
    @RequestMapping(value = "/getProductParentsById")
    public ModelAndView getProductParentsById(int TrademarkById){
        ModelAndView model=new ModelAndView("getProductParentsById");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        List<Product> listProductParentsById=pjmodel.getProductParentById(TrademarkById);
        model.addObject("listProductParent", listProductParent);
        model.addObject("listTrademark", listTrademark); 
        model.addObject("listProductParentsById", listProductParentsById);
        return model;
    }
  
    @RequestMapping(value = "/checkout")
    public ModelAndView getCheckout(){
        ModelAndView model=new ModelAndView("checkout");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        model.addObject("listProductParent", listProductParent);
        return model;
    }
}
