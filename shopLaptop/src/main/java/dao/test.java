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
        Cart c = new Cart(3, "emcuong", "ok", "ok", 3, "1231312312321");
        dao.insertCart(c);
    }
}
