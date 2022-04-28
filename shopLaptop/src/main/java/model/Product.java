/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author LeeJaeLee
 */
public class Product {
    private int pid;
    private String pname;
    private String image;
    private String tittle;
    private String description;
    private int slc;
    private double price;
    private String priceChu;
    private int cid;
    private int amount;

    public Product() {
    }

    // lay du lieu tu db
    public Product(int pid, String pname, String image, String tittle, String description, int slc, double price, String priceChu) {
        this.pid = pid;
        this.pname = pname;
        this.image = image;
        this.tittle = tittle;
        this.description = description;
        this.slc = slc;
        this.price = price;
        this.priceChu = priceChu;
    }

    // gio hang
    public Product(int pid, String pname, String image, String tittle, String description, int slc, double price, String priceChu, int amount) {
        this.pid = pid;
        this.pname = pname;
        this.image = image;
        this.tittle = tittle;
        this.description = description;
        this.slc = slc;
        this.price = price;
        this.priceChu = priceChu;
        this.amount = amount;
    }

    // insert
    public Product(String pname, String image, String tittle, String description, int slc, double price, String priceChu, int amount) {
        this.pname = pname;
        this.image = image;
        this.tittle = tittle;
        this.description = description;
        this.slc = slc;
        this.price = price;
        this.priceChu = priceChu;
        this.amount = amount;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSlc() {
        return slc;
    }

    public void setSlc(int slc) {
        this.slc = slc;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getPriceChu() {
        return priceChu;
    }

    public void setPriceChu(String priceChu) {
        this.priceChu = priceChu;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
    
    
}
