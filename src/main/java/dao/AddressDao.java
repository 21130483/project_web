package dao;

import java.util.List;

import Model.Address;
import Model.User;
import RowMaper.AddressMapper;

public class AddressDAO extends AbtractDAO<Address> implements IAddressDAO {

    @Override
    public List<Address> findAddressesById(int id) {
        String sql = "SELECT * FROM addresses where userId = ?";
        return querry(sql, new AddressMapper(), id);
    }

    @Override
    public List<Address> findAll() {
        String sql = "SELECT * FROM addresses";
        return querry(sql,new AddressMapper());
    }

    @Override
    public boolean update(Address address) {
        String sql =  "UPDATE addresses SET userName = ?, userPhone=?, province =? , districts = ?, wards=?, description =?  WHERE userId = ?";
        return update(sql, address.getNameUser(), address.getPhoneUser(), address.getProvince(), address.getDistricts(), address.getDescription(), address.getId());
    }

    @Override
    public int save(Address address) {
        String sql = "INSERT INTO addresses(userId,userName,userPhone,province,districts,wards,description) VALUES (?,?,?,?,?,?,?)";
        return save(sql, address.getId(), address.getNameUser(), address.getPhoneUser(), address.getProvince(), address.getDistricts(), address.getDescription());
    }

    @Override
    public boolean delete(Address Addresses) {
        String sql = "DELETE FROM addresses WHERE userId = ?";
        return update(sql, Addresses.getId());
    }
}
