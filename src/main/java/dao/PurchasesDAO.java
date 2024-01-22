package dao;

import database.JDBIConnector;
import org.jdbi.v3.core.Handle;

import java.sql.Date;
import java.time.LocalDate;

public class PurchasesDAO {
    private static Handle handle = JDBIConnector.getConnect().open();

    public PurchasesDAO() {
    }

    public static boolean addPurchase(int prodcutID, int userID, int quantity) {
        String orderDate = String.valueOf(LocalDate.now());
        boolean check = handle.execute("INSERT INTO purchases (userID, productID, quantity, orderDate, status) value(?,?,?,?,?)", userID, prodcutID, quantity, orderDate, 0) > 0;
        return check;
    }

    public static boolean updatePurchase(int prodcutID, int userID, String nameColumn, String value){
        boolean check = handle.execute("UPDATE purchases SET " + nameColumn + "=? WHERE userID =? AND productID = ?", value, userID,prodcutID) > 0;
        return check;
    }

    public static void main(String[] args) {
//        addPurchase(1,1,2);
//        updatePurchase(1,1,"status","2");
    }

}
