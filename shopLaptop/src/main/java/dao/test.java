/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import model.Cart;
import model.Category;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class test {
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Cart> list1 = dao.getInfoAccountByUsername("cuong");
        for(Cart c:list1){
            System.out.println(c.getIda() + " " + c.getUsername());
        }
        String num = "20.000.000";
        System.out.println(Double.parseDouble(num.replace(".", "")));
    }
}
