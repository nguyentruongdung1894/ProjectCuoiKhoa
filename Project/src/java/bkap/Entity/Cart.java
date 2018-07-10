/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.Entity;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ScorPius 31
 */
public class Cart {

    private HashMap<Long, Item> cartIteam;

    public Cart() {
    }

    public Cart(HashMap<Long, Item> cartIteam) {
        this.cartIteam = cartIteam;
    }

    public HashMap<Long, Item> getCartIteam() {
        return cartIteam;
    }

    public void setCartIteam(HashMap<Long, Item> cartIteam) {
        this.cartIteam = cartIteam;
    }

    //insert
    public void insertToCart(Long key, Item item) {
        boolean check = cartIteam.containsKey(key);
        if (check) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartIteam.put(key, item);
        } else {
            cartIteam.put(key, item);
        }
    }

    //subto Cart
    public void subToCart(Long key, Item item) {
        boolean check = cartIteam.containsKey(key);
        if (check) {
            int quantity_old = item.getQuantity();
            if (quantity_old <= 1) {
                cartIteam.remove(key);
            }
            else{
                item.setQuantity(quantity_old-1);
                cartIteam.put(key, item);
            }
        }
    }
    
    //remove cart
    public void remove(Long key){
        boolean check=cartIteam.containsKey(key);
        if(check){
            cartIteam.remove(key);
        }
    }
    
    //count item
    public int countItem(){
        return cartIteam.size();
    }
    
    //sum total
    public float totalCart(){
        float count=0;
        for(Map.Entry<Long,Item> list:cartIteam.entrySet()){
            count+=list.getValue().getProduct().getPrice()*list.getValue().getQuantity();
        }
        return count;
    }
}
