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
    
    @RequestMapping(value = "/product-quan-ngo")
    public ModelAndView getproductQuanNgo(){
        ModelAndView model=new ModelAndView("product-quan-ngo");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductQuanNgo=pjmodel.getProductSale();     
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductQuanNgo", listproductQuanNgo);
        model.addObject("listTrademark", listTrademark);  
        return model;
    }
    
    @RequestMapping(value = "/product-quan-au")
    public ModelAndView getproductQuanAu(){
        ModelAndView model=new ModelAndView("product-quan-au");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listProductQuanAu=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listProductQuanAu", listProductQuanAu);
        model.addObject("listTrademark", listTrademark);  
        return model;
    }
    
    @RequestMapping(value = "/product-quan-bo")
    public ModelAndView getproductQuanBo(){
        ModelAndView model=new ModelAndView("product-quan-bo");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listProductQuanBo=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listProductQuanBo", listProductQuanBo);
        model.addObject("listTrademark", listTrademark);  
        return model;
    }
    
    @RequestMapping(value = "/product-ao-phong")
    public ModelAndView getproductAoPhong(){
        ModelAndView model=new ModelAndView("product-ao-phong");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listProductAoPhong=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listProductAoPhong", listProductAoPhong);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-ao-so-mi")
    public ModelAndView getproductAoSoMi(){
        ModelAndView model=new ModelAndView("product-ao-so-mi");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductAoSoMi=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductAoSoMi", listproductAoSoMi);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-ao-vet-nam")
    public ModelAndView getproductAoVetNam(){
        ModelAndView model=new ModelAndView("product-ao-vet-nam");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductAoVetNam=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductAoVetNam", listproductAoVetNam);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-ao-khoac")
    public ModelAndView getproductAoKhoac(){
        ModelAndView model=new ModelAndView("product-ao-khoac");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductAoKhoac=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductAoKhoac", listproductAoKhoac);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-giay-nam")
    public ModelAndView getproductGiayNam(){
        ModelAndView model=new ModelAndView("product-giay-nam");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductGiayNam=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark(); 
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductGiayNam", listproductGiayNam);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-vi-nam")
    public ModelAndView getproductViNam(){
        ModelAndView model=new ModelAndView("product-vi-nam");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductViNam=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductViNam", listproductViNam);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-ca-vat")
    public ModelAndView getproductCaVat(){
        ModelAndView model=new ModelAndView("product-ca-vat");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listproductCaVat=pjmodel.getProductHot();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listproductCaVat", listproductCaVat);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarkPhap")
    public ModelAndView gettrademarkPhap(){
        ModelAndView model=new ModelAndView("product-trademarkPhap");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkPhap=pjmodel.getTrademarkPhap();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkPhap", listtrademarkPhap);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarkMi")
    public ModelAndView gettrademarkMi(){
        ModelAndView model=new ModelAndView("product-trademarkMi");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkMi=pjmodel.getTrademarkMi();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkMi", listtrademarkMi);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarAnh")
    public ModelAndView gettrademarkAnh(){
        ModelAndView model=new ModelAndView("product-trademarAnh");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkAnh=pjmodel.getTrademarkAnh();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkAnh", listtrademarkAnh);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarkDuc")
    public ModelAndView gettrademarkDuc(){
        ModelAndView model=new ModelAndView("product-trademarkDuc");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkDuc=pjmodel.getTrademarkDuc();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkDuc", listtrademarkDuc);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarkTayBanNha")
    public ModelAndView gettrademarkTayBanNha(){
        ModelAndView model=new ModelAndView("product-trademarkTayBanNha");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkTayBanNha=pjmodel.getTrademarkAnh();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkTayBanNha", listtrademarkTayBanNha);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/product-trademarkNga")
    public ModelAndView gettrademarkNga(){
        ModelAndView model=new ModelAndView("product-trademarkNga");
        List<ProductParent> listProductParent=pjmodel.getProductParent();
        List<Product> listtrademarkNga=pjmodel.getTrademarkAnh();
        List<Trademark> listTrademark=pjmodel.getTrademark();
        model.addObject("listProductParent", listProductParent);
        model.addObject("listtrademarkNga", listtrademarkNga);
        model.addObject("listTrademark", listTrademark); 
        return model;
    }
    
    @RequestMapping(value = "/checkout")
    public ModelAndView getCheckout(){
        ModelAndView model=new ModelAndView("checkout");
        
        return model;
    }
}
