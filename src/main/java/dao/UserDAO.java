package dao;

import database.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.stream.Collectors;

public class UserDAO {
    public static final Jdbi connect = JDBIConnector.getConnect();


    public List<User> getAllUsers(){
        List<User> users = connect.withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.toList()));
        return users;
    }
    public User checkLogin(String email, String pass) {
        List<User> users = null;
        users = connect.withHandle(handle ->
                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.toList()));
        for (User user : users) {
            if (user.getEmail().equals(email)) {
                if (user.getPassword().equals(pass)) {
                    return user;
                }
            }
        }
        return null;
    }
}
