package dao;


import java.util.List;

import javax.inject.Inject;

import Model.Address;
import Model.Product;
import Model.User;
import RowMaper.ProductMapper;
import RowMaper.RowMapper;
import RowMaper.UserMapper;

public class UserDAO extends AbtractDAO<User> implements IUserDAO {
    IAddressDAO addressDAO= new AddressDAO();

    @Override
    public User findUserByEmail(String email) {
//		String sql = "SELECT * FROM users join status on status.statusId = users.statusId where email = ?";
//		return querry(sql, new UserMapper(), email);

        String sql = "SELECT * FROM users join status on status.statusId = users.statusId where users.email = ?";
        List<User> list = querry(sql, new UserMapper(), email);
        User user = !list.isEmpty()? list.get(0) : null;
        if(user!=null) {
            List<Address> address = addressDAO.findAddressesById(user.getId());
            user.setAddresses(address);
        }
        return user;
    }

    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        System.out.println(userDAO.findUserByEmail("admin@gmail.com"));
    }

    @Override
    public User findUserById(int id) {
        String sql = "SELECT * FROM users join status on status.statusId = users.statusId where users.userId = ?";
        User user = querry(sql, new UserMapper(), id).get(0);
        List<Address> address = addressDAO.findAddressesById(id);
        user.setAddresses(address);
        return user;
    }

    @Override
    public int save(User user) {
        String sql = "INSERT INTO users(passwordHash,fullName,email,phone,statusId) VALUES (?,?,?,?,?)";
        return save(sql, user.getPasswordHash(), user.getFullName(), user.getEmail(), user.getPhone(),
                user.getStatus().getId());
    }

    @Override
    public List<User> findAll() {
        String sql = "SELECT * FROM users join status on status.statusId = users.statusId";
        return querry(sql, new UserMapper());
    }

    @Override
    public boolean update(User user) {
        String sql = "UPDATE users SET email = ?, passwordHash = ?,fullName=?,statusId=? WHERE userId = ?";
        return update(sql, user.getEmail(), user.getPasswordHash(), user.getFullName(), user.getStatus().getId(),
                user.getId());
    }

    @Override
    public boolean delete(User user) {
        String sql = "DELETE FROM users WHERE userId = ?";
        return update(sql, user.getId());
    }

    @Override
    public <T> List<T> querry(String sql, RowMapper<T> rowMapper, Object... objects) {
        return null;
    }

    @Override
    public int save(String sql, Object... objects) {
        return 0;
    }

    @Override
    public boolean update(String sql, Object... objects) {
        return false;
    }
}

//import database.JDBIConnector;
//import model.User;
//import org.jdbi.v3.core.Jdbi;
//
//import java.util.List;
//import java.util.stream.Collectors;
//
//public class UserDAO {
//    public static final Jdbi connect = JDBIConnector.getConnect();
//
//    public User checkLogin(String email, String pass) {
//        List<User> users = null;
//        users = connect.withHandle(handle ->
//                handle.createQuery("select * from users").mapToBean(User.class).collect(Collectors.toList()));
//        for (User user : users) {
//            if (user.getEmail().equals(email)) {
//                if (user.getPassword().equals(pass)) {
//                    return user;
//                }
//            }
//        }
//        return null;
//    }
//}
