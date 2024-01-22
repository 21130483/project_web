package dao;

import database.JDBIConnector;
import model.Product;
import model.User;
import org.jdbi.v3.core.Handle;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {

    private static Handle handle = JDBIConnector.getConnect().open();

    public ProductDAO() {
    }


    public static Product getProductById(int id) {
        Product result = handle.select("SELECT * FROM products WHERE productID = ?").bind(0, id).mapToBean(Product.class).findOne().orElse(null);
        return result;
    }

    public static List<Product> getAllProduct() {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products").mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static List<Product> getBestSelling(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products ORDER BY orderedNumbers DESC LIMIT ?").bind(0, limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }


    public static List<Product> getBestFaceMask(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products WHERE categoryID = ? ORDER BY orderedNumbers DESC LIMIT ?").bind(0, 1).bind(1, limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }


    public static List<Product> getNewProduct(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products ORDER BY dateAdded DESC LIMIT ?").bind(0, limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static List<Product> getFindProducts(String textFindProduct) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products WHERE name LIKE ? ").bind(0, "%" + textFindProduct + "%").mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static List<Product> getRelateProduct(Product product, int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products WHERE categoryID = ? and productID != ? LIMIT ?").bind(0, product.getCategoryID()).bind(1, product.getProductID()).bind(2, limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static boolean updateProduct(int prodcutID, String nameColumn, String value){
        boolean check = handle.execute("UPDATE products SET " + nameColumn + "=? WHERE productID = ?", value,prodcutID) > 0;
        return check;
    }

    public static void main(String[] args) {
//        List<Product> products = getRelateProduct();
//        for (Product product : products) {
//            System.out.println(product);
//        }
//        System.out.println(updateProduct(1,"quantity","500"));




    }


}
