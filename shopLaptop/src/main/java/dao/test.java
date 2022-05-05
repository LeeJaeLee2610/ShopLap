/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class test {
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list3 = dao.phanTrangProductsBySearch(3, 9, "lenovo");
        System.out.println(list3.size());
        Product p1 = dao.getProductByPID("32");
        System.out.println(p1.getPname() + " " + p1.getImage() + " " + p1.getPid());
        Product p2 = dao.infoLaptop("32");
        System.out.println(p2);
        Product p3 = dao.infoPhukien("32");
        System.out.println(p3);
    }
}
