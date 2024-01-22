package model;

import java.io.File;
import java.util.Date;
import java.util.Objects;

public class Product {
    private int productID;

    private int categoryID;
    private int originID;
    private int price;
    private int sale;
    private int quantity;
    private int orderedNumber;
    private Date dateAdded;
    private String name;
    private String trademark;
    private String content;

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


    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getOriginID() {
        return originID;
    }

    public void setOriginID(int originID) {
        this.originID = originID;
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

    public String getPriceHaveDots() {
        String result = "";
        String priceString = String.valueOf(price);
        int dots = priceString.length() - 1 / 3;
        int remainder = priceString.length() % 3;
        for (int i = 0; i < priceString.length(); i++) {
            if (i % 3 == remainder && i != 0) {

                result += ".";
            }
            result += priceString.charAt(i);

        }
        result += " Đồng";
        return result;
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

    public int numberImg(String path) {
        File fileImg = new File(path);
        if (fileImg.exists()) {

            return fileImg.list().length;
        } else {
            return 0;
        }
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return productID == product.productID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(productID);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return productID == product.productID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(productID);
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", categoryID=" + categoryID +
                ", originID=" + originID +
                ", price=" + price +
                ", sale=" + sale +
                ", quantity=" + quantity +
                ", orderedNumber=" + orderedNumber +
                ", dateAdded=" + dateAdded +
                ", name='" + name + '\'' +
                ", trademark='" + trademark + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public static void main(String[] args) {

    }

}
