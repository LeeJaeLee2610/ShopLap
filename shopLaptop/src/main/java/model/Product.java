/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;

/**
 *
 * @author LeeJaeLee
 */
public class Product {
    private int pid;
    private String image;
    private String pname;
    private double price;
    private int slc;
    private int daban;
    private String tittle;
    private String description;
    private int isDiscount;
    private double discount;
    private String priceChu;
    private double giamCon;
    private String giamconChu;

    public Product() {
    }

    public Product(int pid, String image, String pname, double price, int slc, int daban, 
            String tittle, String description, int isDiscount, double discount, String priceChu, double giamCon, String giamconChu) {
        this.pid = pid;
        this.image = image;
        this.pname = pname;
        this.price = price;
        this.slc = slc;
        this.daban = daban;
        this.tittle = tittle;
        this.description = description;
        this.isDiscount = isDiscount;
        this.discount = discount;
        this.priceChu = priceChu;
        this.giamCon = giamCon;
        this.giamconChu = giamconChu;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSlc() {
        return slc;
    }

    public void setSlc(int slc) {
        this.slc = slc;
    }

    public int getDaban() {
        return daban;
    }

    public void setDaban(int daban) {
        this.daban = daban;
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

    public int getIsDiscount() {
        return isDiscount;
    }

    public void setIsDiscount(int isDiscount) {
        this.isDiscount = isDiscount;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getPriceChu() {
        return priceChu;
    }

    public void setPriceChu(String priceChu) {
        this.priceChu = priceChu;
    }

    public double getGiamCon() {
        return giamCon;
    }

    public void setGiamCon(double giamCon) {
        this.giamCon = giamCon;
    }

    public String getGiamconChu() {
        return giamconChu;
    }

    public void setGiamconChu(String giamconChu) {
        this.giamconChu = giamconChu;
    }
    
    public static String doubleToSring(Double d){
        if (d == null)
            return null;
        if (d.isNaN() || d.isInfinite())
            return d.toString();

        return new BigDecimal(d.toString()).stripTrailingZeros().toPlainString();
    }
}
