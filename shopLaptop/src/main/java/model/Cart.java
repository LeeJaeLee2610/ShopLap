/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LeeJaeLee
 */
public class Cart {
    private int stt;
    private int ida;
    private String username;
    private String hoten;
    private String phone;
    private String diachi;
    private String email;
    private String ghichu;
    private String image;
    private String pname;
    private int amount;
    private String giaChu;
    private String total;
    private String resAll;
    public Cart() {
    }

    public Cart(int ida, String username, String hoten, String phone, String diachi, String email, String image, String pname, int amount, String total) {
        this.ida = ida;
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.image = image;
        this.pname = pname;
        this.amount = amount;
        this.total = total;
    }

    public Cart(String username, String hoten, String phone, String diachi, String email, String ghichu, String resAll) {
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.ghichu = ghichu;
        this.resAll = resAll;
    }

    public Cart(int ida, String username, String hoten, String phone, String diachi, String email, String ghichu, String resAll) {
        this.ida = ida;
        this.username = username;
        this.hoten = hoten;
        this.phone = phone;
        this.diachi = diachi;
        this.email = email;
        this.ghichu = ghichu;
        this.resAll = resAll;
    }

    public Cart(int ida, String username, String image, String pname, int amount, String total) {
        this.ida = ida;
        this.username = username;
        this.image = image;
        this.pname = pname;
        this.amount = amount;
        this.total = total;
    }

    public String getGiaChu() {
        return giaChu;
    }

    public void setGiaChu(String giaChu) {
        this.giaChu = giaChu;
    }

    

    public int getStt() {
        return stt;
    }

    public void setStt(int stt) {
        this.stt = stt;
    }
    
    
    
    public int getIda() {
        return ida;
    }

    public void setIda(int ida) {
        this.ida = ida;
    }
    
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    public String getResAll() {
        return resAll;
    }

    public void setResAll(String resAll) {
        this.resAll = resAll;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
    
    
}
