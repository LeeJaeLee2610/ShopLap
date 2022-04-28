/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbHelper.DatabaseHelper;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import model.Account;
import model.Product;
/**
 *
 * @author LeeJaeLee
 */
public class DAO {
    public List<Product> getAllProducts(){
        List<Product> list = new ArrayList<>();
        String sql = "select * from product_laptop";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getDouble(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getNewProducts(){
        List<Product> list = new ArrayList<>();
        String sql = "select top 4 * from product_laptop\n" +
            "order by product_laptop.pid desc";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getDouble(7), rs.getString(8)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Account> getAllAccounts(){
        List<Account> list = new ArrayList<>();
        String sql = "select * from account";
        try {
            Connection con = DatabaseHelper.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void insert_account(String username, String password){
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
    
    public static void main(String[] args) {
       DAO dao = new DAO(); 
       List<Product> listP = dao.getNewProducts();
       for(Product p:listP){
           System.out.println(p.getPname());
       }
       List<Account> listA = dao.getAllAccounts();
       for(Account a:listA){
           System.out.println(a.getUsername() + " " + a.getPassword() + " " + a.getIsAdmin());
       }
       String reg = "^[a-zA-Z0-9]+";
       String tmp = "abc123AAA";
       if(Pattern.matches(reg, tmp)){
           System.out.println("ok");
       }
       else{
           System.out.println("no");
       }
    }
}
