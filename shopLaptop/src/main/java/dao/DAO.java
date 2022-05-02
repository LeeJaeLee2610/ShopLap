/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbHelper.DatabaseHelper;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import model.Account;
import model.Category;
import model.Product;

/**
 *
 * @author LeeJaeLee
 */
public class DAO {
    public List<Category> getAllCategoryLaptop(){
        String sql = "select * from category where isCate = 1";
        List<Category> list = new ArrayList();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Category> getAllCategoryPhukien(){
        String sql = "select * from category where isCate = 0";
        List<Category> list = new ArrayList();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1), rs.getString(2), rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductsLaptopByCID(String cid){
        String sql = "select * from product where cid = ? and isCate = 1";
        List<Product> list = new ArrayList();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getProductsPhukienByCID(String cid){
        String sql = "select * from product where cid = ? and isCate = 0";
        List<Product> list = new ArrayList();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> phanTrangProductsLaptopByCID(int index, int size, String cid){
        String sql = "with x as(select ROW_NUMBER() over (order by pid asc) as r,\n" +
            "* from product where cid = ? and isCate = 1)\n" +
            "select * from x where r between ?*?-8 and ?*?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ps.setInt(2, index);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(5) - rs.getDouble(5) * (rs.getDouble(11) / 100);
                list.add(new Product(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getDouble(11),
                        formatDouble(doubleToSring(rs.getDouble(5))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> phanTrangProductsPhukienByCID(int index, int size, String cid){
        String sql = "with x as(select ROW_NUMBER() over (order by pid asc) as r,\n" +
            "* from product where cid = ? and isCate = 0)\n" +
            "select * from x where r between ?*?-8 and ?*?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cid);
            ps.setInt(2, index);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(5) - rs.getDouble(5) * (rs.getDouble(11) / 100);
                list.add(new Product(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getDouble(11),
                        formatDouble(doubleToSring(rs.getDouble(5))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getNewProducts() {
        List<Product> list = new ArrayList();
        String sql = "select top 6 * from product where isCate = 1\n"
                + "order by pid desc";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getSellingProducts() {
        List<Product> list = new ArrayList();
        String sql = "select top 6 * from product where isCate = 1\n"
                + "order by daban desc";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getLimitedProducts() {
        List<Product> list = new ArrayList();
        String sql = "select top 6 * from product where isCate = 1 and\n"
                + "slc < 10 and slc > 0";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getDiscountProducts() {
        List<Product> list = new ArrayList();
        String sql = "select top 6 * from product where isDiscount = 1 and isCate = 1";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccounts() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from account";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void register(String username, String password) {
        String sql = "insert into account(username, password) values(?, ?)";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public Account login(String username, String password){
        String sql = "select * from account where username = ? and password = ?";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Product> getProductsBySearch(String search){
        String sql = "select * from product where [pname] like ?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> phanTrangProductsBySearch(int index, int size, String search){
        String sql = "with x as(select ROW_NUMBER() over (order by pid asc) as r,\n" +
            "* from product where [pname] like ?)\n" +
            "select * from x where r between ?*?-8 and ?*?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            ps.setInt(2, index);
            ps.setInt(3, size);
            ps.setInt(4, index);
            ps.setInt(5, size);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(5) - rs.getDouble(5) * (rs.getDouble(11) / 100);
                list.add(new Product(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getDouble(11),
                        formatDouble(doubleToSring(rs.getDouble(5))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductsLaptop() {
        List<Product> list = new ArrayList();
        String sql = "select * from product where isCate = 1";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProductsPhukien() {
        List<Product> list = new ArrayList();
        String sql = "select * from product where isCate = 0";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(4) - rs.getDouble(4) * (rs.getDouble(10) / 100);
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getDouble(10),
                        formatDouble(doubleToSring(rs.getDouble(4))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> phanTrangProductLaptop(int index, int size){
        String sql = "with x as(select ROW_NUMBER() over (order by pid asc) as r,\n" +
            "* from product where isCate = 1)\n" +
            "select * from x where r between ?*?-8 and ?*?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, index);
            ps.setInt(2, size);
            ps.setInt(3, index);
            ps.setInt(4, size);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(5) - rs.getDouble(5) * (rs.getDouble(11) / 100);
                list.add(new Product(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getDouble(11),
                        formatDouble(doubleToSring(rs.getDouble(5))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> phanTrangProductPhukien(int index, int size){
        String sql = "with x as(select ROW_NUMBER() over (order by pid asc) as r,\n" +
            "* from product where isCate = 0)\n" +
            "select * from x where r between ?*?-8 and ?*?";
        List<Product> list = new ArrayList<>();
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, index);
            ps.setInt(2, size);
            ps.setInt(3, index);
            ps.setInt(4, size);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                double tmp = rs.getDouble(5) - rs.getDouble(5) * (rs.getDouble(11) / 100);
                list.add(new Product(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDouble(5),
                        rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(10), rs.getDouble(11),
                        formatDouble(doubleToSring(rs.getDouble(5))), tmp, formatDouble(doubleToSring(tmp))));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list3 = dao.phanTrangProductLaptop(1, 9);
        for(Product p:list3){
            System.out.println(p.getPname() + " " + p.getGiamconChu() + " "+ p.getPriceChu());
        }
        List<Category> listC = dao.getAllCategoryLaptop();
        for(Category c:listC){
            System.out.println(c.getCid());
        }
        List<Product> list5 = dao.getDiscountProducts();
        for(Product p:list5){
            System.out.println(p.getPriceChu() + " " +  p.getGiamCon() + " " + p.getGiamconChu());
        }
    }

    public static String formatDouble(String input) {
        double num = Double.parseDouble(input);
        return String.format(Locale.GERMAN, "%,.0f", num);
    }

    public static String doubleToSring(Double d) {
        if (d == null) {
            return null;
        }
        if (d.isNaN() || d.isInfinite()) {
            return d.toString();
        }

        return new BigDecimal(d.toString()).stripTrailingZeros().toPlainString();
    }
}
