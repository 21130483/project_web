package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

public class Purchases {
    private int purchaseID;
    private int userID;
    private int productID;
    private String name;
    private int quantity;

    private int price;

    //-1 là hủy đơn hàng
    //0 là chờ xác nhận
    //1 là đang giao
    //2 là giao thành công
    int status;
    private Date orderDate;
    private Date receivedDate;
    private int starNumber;
    private String content;
    private Date dateRated;

    public Purchases() {
    }


    public int getPurchaseID() {
        return purchaseID;
    }

    public void setPurchaseID(int purchaseID) {
        this.purchaseID = purchaseID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStatus() {
        return status;
    }

    public String getStatusString() {
        if (status == 0) {
            return "chờ xác nhận";
        } else if (status == 1) {
            return "đang giao";
        } else if (status == 2) {
            return "thành công";

        }else{
            return "Hủy đơn hàng";
        }
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public Date getReceivedDate() {
        return receivedDate;
    }

    public void setReceivedDate(Date receivedDate) {
        this.receivedDate = receivedDate;
    }

    public int getStarNumber() {
        return starNumber;
    }

    public void setStarNumber(int starNumber) {
        this.starNumber = starNumber;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getDateRated() {
        return dateRated;
    }

    public void setDateRated(Date dateRated) {
        this.dateRated = dateRated;
    }

    public Purchases(int userID, int productID, int quantity) {
        this.userID = userID;
        this.productID = productID;
        this.quantity = quantity;

    }

    @Override
    public String toString() {
        return "Purchases{" +
                "purchaseID=" + purchaseID +
                ", userID=" + userID +
                ", productID=" + productID +
                ", name=" + name +
                ", quantity=" + quantity +
                ", price=" + price +
                ", status=" + status +
                ", orderDate=" + orderDate +
                ", receivedDate=" + receivedDate +
                ", starNumber=" + starNumber +
                ", content='" + content + '\'' +
                ", dateRated=" + dateRated +
                '}';
    }
}
