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
        List<Category> list1 = dao.getAllCategoryPhukien();
        for(Category c:list1){
            System.out.println(c.getCname());
        }
        List<Product> list6 = dao.getProductsPhukienByCID("4");
        for(Product p:list6){
            System.out.println(p.getDiscount() + " " + p.getPname());
        }
        List<Product> list7 = dao.phanTrangProductsPhukienByCID(1, 9, "4");
        for(Product p:list7){
            System.out.println(p.getGiamconChu() + " " + p.getPname());
        }
        List<Product> list8 = dao.getAllProductsPhukien();
        System.out.println(list8.size());
        List<Product> list2 = dao.getProductsLaptopByCID("1");
        for(Product p:list2){
            System.out.println(p.getPname());
        }
        List<Product> list3 = dao.phanTrangProductsLaptopByCID(1, 9, "1");
        for(Product p:list3){
            System.out.println(p.getGiamconChu());
        }
        List<Product> list4 = dao.getAllProductsLaptop();
        for(Product p:list4){
            System.out.println(p.getImage() + " " + p.getGiamconChu() + " " + p.getPname());
        }
        List<Category> list5 = dao.getAllCategoryLaptop();
        for(Category pCategory:list5){
            System.out.println(pCategory.getCid() + " " + pCategory.getCname());
        }
    }
}
