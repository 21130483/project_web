package dao;

import database.JDBIConnector;
import model.Category;
import model.User;
import org.jdbi.v3.core.Handle;

import java.util.List;
import java.util.stream.Collectors;

public class CategoryDAO {

    private static Handle handle = JDBIConnector.getConnect().open();

    public CategoryDAO() {
    }

    public static Category getCategoryById(int id){
        Category result = handle.select("SELECT * FROM category WHERE categoryID = ?").bind(0, id).mapToBean(Category.class).findOne().orElse(null);
        return result;
    }

    public static List<Category> getAllCategory(){
        List<Category> categories = handle.select("SELECT * FROM category").mapToBean(Category.class).collect(Collectors.toList());;
        return categories;
    }

    public static void main(String[] args) {
//        List<Category> categories = getAllCategory();
//        for(Category c :  categories){
//            System.out.println(c);
//        }
//        System.out.println(getCategoryById(1));
    }
}
