/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.Controller;

import bkap.Entity.Item;
import bkap.Model.PJModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ScorPius 31
 */
@Controller
@RequestMapping(value = "/carController")
public class CartController {

    private PJModel pjmodel;

    public CartController() {
        pjmodel = new PJModel();
    }
    @RequestMapping(value = "/getAllItem")
    public ModelAndView getAllItem() {
        ModelAndView model = new ModelAndView("cart");
        return model;     
    }
    @RequestMapping(value = "/addCart")
    public ModelAndView addCart(int productId, HttpSession session) {
        ModelAndView model = new ModelAndView("cart");
        List<Item> listItem = (List<Item>) session.getAttribute("listItem");
        if (listItem == null) {
            // Giỏ hàng chưa có sản phẩm nào add luôn sp vào cart
            listItem = new ArrayList<>();
            listItem.add(new Item(pjmodel.getProById(productId), 1));
        } else {
            // Giỏ hàng đã có sản phẩm
            boolean flag = false;
            for (Item c : listItem) {
                // Kiểm tra xem sản phẩm thêm vào đã có trong giỏ hàng chưa
                if (c.getProduct().getProductId()==(productId)) {
                    // Sản phẩm đã có trong giỏ hàng ta tăng biến số lượng
                    int a = c.getQuantity();
                    c.setQuantity(a + 1);
                    flag = true;
                    break;
                }
            }
            // sản phẩm chưa có trong giỏ hàng thì ta add sản phẩm vào giỏ hàng
            if (!flag) {
                listItem.add(new Item(pjmodel.getProById(productId), 1));
            }
            
        }
        // set giỏ hàng lên session
        session.setAttribute("listItem", listItem);
        // set tổng tiền lên session
        session.setAttribute("total", getTotal(listItem));
        //Tinh lai so san pham trong gio hang
        session.setAttribute("count", listItem.size());
        return model;
    }

    public float getTotal(List<Item> listItem) {
        float total = 0;
        for (Item c : listItem) {

            total += c.getQuantity() * c.getProduct().getPrice();
        }
        return total;
    }

    //xóa sản phẩm trong giỏ hàng
    @RequestMapping(value = "/remove", method = RequestMethod.GET)
    public ModelAndView remove(@RequestParam("productId") int productId, HttpSession session) {
        ModelAndView model = new ModelAndView("cart");
        // lấy danh sách sản phẩm trên sesion
        List<Item> listItem = (List<Item>) session.getAttribute("listItem");
        if (listItem != null) {
            for (int i = 0; i < listItem.size(); i++) {
                if (listItem.get(i).getProduct().getProductId()==(productId)){
                    // neu sp ton tai thi remove
                    listItem.remove(i).getProduct().getProductId();
                    break;
                }
            }
        }
        // luu danh sách sản phẩm và tổng tiền
        session.setAttribute("listItem", listItem);
        session.setAttribute("total", getTotal(listItem));
        session.setAttribute("count", listItem.size());
        return model;
    }
//    // sửa sản phẩm trong giỏ hàng
//
    @RequestMapping(value = "/update")
    public ModelAndView update(HttpServletRequest request, HttpSession session) {
        ModelAndView model = new ModelAndView("cart");

        // lay danh sách sản phẩm trong session
        List<Item> listItem = (List<Item>) session.getAttribute("listItem");
        // lay danh sach số lượng san pham muon mua
        String[] arrQuantity = request.getParameterValues("quantity");

        for (int i = 0; i < listItem.size(); i++) {
            listItem.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
            if (Integer.parseInt(arrQuantity[i]) < 1) {
                listItem.get(i).setQuantity(1);
            }
        }
        // luu danh sách sản phẩm và tổng tiền lên session
        session.setAttribute("listItem", listItem);
        session.setAttribute("total", getTotal(listItem));
        session.setAttribute("count", listItem.size());
        return model;
    }
//    // Xóa toàn bộ giỏ hàng
//
    @RequestMapping(value = "/clear")
    public ModelAndView myCart(HttpSession session) {
        ModelAndView model = new ModelAndView("cart");
        session.removeAttribute("listItem");
        session.setAttribute("count", 0);
        return model;
    }
}


