package dao;

import database.JDBIConnector;
import model.Product;
import model.Purchases;
import org.jdbi.v3.core.Handle;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class PurchasesDAO {
    private static Handle handle = JDBIConnector.getConnect().open();

    public PurchasesDAO() {
    }

    public static Purchases getPurchaseById(int id) {
        Purchases result = handle.select("SELECT * FROM purchases WHERE purchaseID = ? LIMIT 1").bind(0, id).mapToBean(Purchases.class).findOne().orElse(null);
        return result;
    }

    public static int newPurchaseID(){
        int countID = 0;
        Purchases purchases;
        do {
            countID++;
            purchases = getPurchaseById(countID);
        } while (purchases != null);
        return countID;
    }
    public static boolean addPurchase(int purchaseId,int prodcutID, int userID, int quantity,int price) {
        String orderDate = String.valueOf(LocalDate.now());
        boolean check = handle.execute("INSERT INTO purchases (purchaseID,userID, productID, quantity, price, orderDate, status) value(?,?,?,?,?,?,?)",purchaseId, userID, prodcutID, quantity,price, orderDate, 0) > 0;
        return check;
    }

    public static boolean updatePurchase(int purchaseID,int userID,int productID, String nameColumn, String value){
        boolean check = handle.execute("UPDATE purchases SET " + nameColumn + "=? WHERE purchaseID = ? AND userID = ? AND productID = ?", value, purchaseID,userID,productID) > 0;
        return check;
    }

    public List<Purchases> getAllPurchases() {
        List<Purchases> result = new ArrayList<>();
        result = handle.select("SELECT * FROM purchases").mapToBean(Purchases.class).collect(Collectors.toList());
        return result;
    }
    public List<Purchases> getAllPurchases(int userId) {
        String sql = "SELECT pu.*, p.name FROM purchases pu JOIN products p ON pu.productID = p.productID WHERE userID = ?";
        return handle.select(sql)
                    .bind(0, userId)
                    .mapToBean(Purchases.class)
                    .list();
    }

    public static void main(String[] args) {

        System.out.println(getPurchaseById(1));
    }

}
