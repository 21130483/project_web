package dao;

import database.JDBIConnector;
import model.Product;
import org.jdbi.v3.core.Handle;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductDAO {

    private static Handle handle  = JDBIConnector.getConnect().open();

    public ProductDAO() {
    }

    public static List<Product> getBestSelling(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products ORDER BY orderedNumbers DESC LIMIT ?").bind(0,limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }



    public static List<Product> getBestFaceMask(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products WHERE categoryID = ? ORDER BY orderedNumbers DESC LIMIT ?").bind(0,1).bind(1,limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }


    public static List<Product> getNewProduct(int limit) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products ORDER BY dateAdded DESC LIMIT ?").bind(0,limit).mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static List<Product> getFindProducts(String textFindProduct) {
        List<Product> result = new ArrayList<>();
        result = handle.select("SELECT * FROM products WHERE name LIKE ? ").bind(0, "%"+textFindProduct+"%").mapToBean(Product.class).collect(Collectors.toList());
        return result;
    }

    public static void main(String[] args) {
        List<Product> products = getFindProducts("Khẩu trang");
        for (Product product : products){
            System.out.println(product);
        }
    }
}
