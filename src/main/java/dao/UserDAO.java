package dao;

import database.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Handle;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class UserDAO {
    private static Handle handle = JDBIConnector.getConnect().open();

    public UserDAO() {
    }

    public static User getUserById(int id) {
        User result = handle.select("SELECT * FROM users WHERE userID = ?").bind(0, id).mapToBean(User.class).findOne().orElse(null);
        return result;
    }

    public boolean updateUser(int userID, String nameColumn, String value) {
        boolean check = handle.execute("UPDATE users SET " + nameColumn + "=? WHERE userID =?", value, userID) > 0;
        return check;
    }

    public static List<User> getAllUsers() {
        List<User> users = handle.select("SELECT * FROM users").mapToBean(User.class).collect(Collectors.toList());
        ;
        return users;
    }

    public static User checkLogin(String email, String pass) {

//        List<User> users = null;
        List<User> users = handle.select("SELECT * FROM users").mapToBean(User.class).collect(Collectors.toList());
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                if (user.getPassword().equals(pass)) {
                    return user;
                } else {
                    break;
                }
            }
        }
        return null;
    }

    public static void main(String[] args) {
//        User user = checkLogin("phuoc@gmail.com","123");
        User user = getUserById(1);
        System.out.println(user);
//        List<User> users = getAllUsers();
//        for (User user : users) {
//            System.out.println(user);
    }



}
