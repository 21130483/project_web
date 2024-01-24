package dao;
//
//import database.JDBIConnector;
//import model.User;
//import org.jdbi.v3.core.Handle;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class UserDAO {
//    private static Handle handle = JDBIConnector.getConnect().open();
//
//    public UserDAO() {
//    }
//
//    public static User getUserById(int id) {
//        User result = handle.select("SELECT * FROM users WHERE userID = ?").bind(0, id).mapToBean(User.class).findOne().orElse(null);
//        return result;
//    }
//
//    public boolean updateUser(int userID, String nameColumn, String value) {
//        boolean check = handle.execute("UPDATE users SET " + nameColumn + "=? WHERE userID =?", value, userID) > 0;
//        return check;
//    }
//
//    public static List<User> getAllUsers() {
//        List<User> users = handle.select("SELECT * FROM users").mapToBean(User.class).collect(Collectors.toList());
//        ;
//        return users;
//    }
//
//    public static User checkLogin(String email, String pass) {
//
////        List<User> users = null;
//        List<User> users = handle.select("SELECT * FROM users").mapToBean(User.class).collect(Collectors.toList());
//        for (User user : users) {
//            if (user.getEmail().equals(email)) {
//                if (user.getPassword().equals(pass)) {
//                    return user;
//                } else {
//                    break;
//                }
//            }
//        }
//        return user;
//    }
//
//    public static void main(String[] args) {
//        UserDAO userDAO = new UserDAO();
//        System.out.println(userDAO.findUserByEmail("admin@gmail.com"));
//    }
//
//    @Override
//    public User findUserById(int id) {
//        String sql = "SELECT * FROM users join status on status.statusId = users.statusId where users.userId = ?";
//        User user = querry(sql, new UserMapper(), id).get(0);
//        List<Address> address = addressDAO.findAddressesById(id);
//        user.setAddresses(address);
//        return user;
//    }
//
//    @Override
//    public int save(User user) {
//        String sql = "INSERT INTO users(passwordHash,fullName,email,phone,statusId) VALUES (?,?,?,?,?)";
//        return save(sql, user.getPasswordHash(), user.getFullName(), user.getEmail(), user.getPhone(),
//                user.getStatus().getId());
//    }
//
//    @Override
//    public List<User> findAll() {
//        String sql = "SELECT * FROM users join status on status.statusId = users.statusId";
//        return querry(sql, new UserMapper());
//    }
//
//    @Override
//    public boolean update(User user) {
//        String sql = "UPDATE users SET email = ?, passwordHash = ?,fullName=?,statusId=? WHERE userId = ?";
//        return update(sql, user.getEmail(), user.getPasswordHash(), user.getFullName(), user.getStatus().getId(),
//                user.getId());
//    }
//
//    @Override
//    public boolean delete(User user) {
//        String sql = "DELETE FROM users WHERE userId = ?";
//        return update(sql, user.getId());
//    }
//
//    @Override
//    public <T> List<T> querry(String sql, RowMapper<T> rowMapper, Object... objects) {
//        return null;
//    }
//
//    @Override
//    public int save(String sql, Object... objects) {
//        return 0;
//    }
//
//    @Override
//    public boolean update(String sql, Object... objects) {
//        return false;
//    }
//
//    public static void main(String[] args) {
////        User user = checkLogin("phuoc@gmail.com","123");
//        User user = getUserById(1);
//        System.out.println(user);
////        List<User> users = getAllUsers();
////        for (User user : users) {
////            System.out.println(user);
//    }
//
//
//}

import database.JDBIConnector;
import model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class UserDAO {
    public static final Jdbi connect = JDBIConnector.getConnect();

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

    public List<User> getAllUsers() {
        List<User> users = connect.withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users").mapToBean(User.class).collect(Collectors.toList());
        });
        return users;
    }

    public boolean updateUser(int userID, String nameColumn, String value) {
        boolean check = connect.inTransaction(handle -> {
            return handle.createUpdate("UPDATE users SET " + nameColumn + "=? WHERE userID =?").bind(0, nameColumn)
                    .bind(1, userID).execute() > 0;
        });
        return check;
    }

    public boolean updateUser1(User user) {
        boolean check = connect.inTransaction(handle -> {
            return handle.createUpdate("UPDATE users SET fullName = ? , gender = ?, phoneNumbers = ?, dob = ?, email = ? WHERE userID = ?")
                    .bind(0, user.getFullName())
                    .bind(1, user.getGender())
                    .bind(2, user.getPhoneNumbers())
                    .bind(3, user.getDob())
                    .bind(4, user.getEmail())
                    .bind(5, user.getUserID())
                    .execute() > 0;
        });
        return check;
    }

    public User getUserById(int id) {
        Optional<User> result = connect.withHandle(handle -> {
            return handle.createQuery("SELECT * FROM users WHERE userID = ?")
                    .bind(0, id).mapToBean(User.class).list().stream().findFirst();
        });
        return result.orElse(null);
    }

    public boolean updatePassword(User user, String newpass1) {
        boolean check = connect.inTransaction(handle -> {
            return handle.createUpdate("UPDATE users SET password = ? WHERE userID = ?")
                    .bind(0, newpass1)
                    .bind(1, user.getUserID()).execute() > 0;
        });
        return check;
    }
}
