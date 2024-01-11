package model;

import java.util.Date;

public class Product {
    private int productID;
    private String name;
    private String category;
    private String trademark;
    private String origin;
    private String content;
    private int price;
    private int sale;
    private int quantity;
    private int orderedNumber;
    private Date dateAdded;

    public Product() {
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getOrderedNumber() {
        return orderedNumber;
    }

    public void setOrderedNumber(int orderedNumber) {
        this.orderedNumber = orderedNumber;
    }

    public Date getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(Date dateAdded) {
        this.dateAdded = dateAdded;
    }


    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", name='" + name + '\'' +
                ", category='" + category + '\'' +
                ", trademark='" + trademark + '\'' +
                ", origin='" + origin + '\'' +
                ", content='" + content + '\'' +
                ", price=" + price +
                ", sale=" + sale +
                ", quantity=" + quantity +
                ", orderedNumber=" + orderedNumber +
                ", dateAdded=" + dateAdded +
                '}';
    }
}
