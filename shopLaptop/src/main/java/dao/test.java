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
        Product p = dao.getProductByPID("1");
        System.out.println(p.getPname());
    }
}
