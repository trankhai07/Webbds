package live.muabanbds.dao.impl;

import live.muabanbds.dao.IUserDAO;
import live.muabanbds.mapper.PromotionMapper;
import live.muabanbds.mapper.UserMapper;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.Security;


import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.sql.*;
import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {
    @Override
    public UserModel findByUserNameAndPassword(String userName, String password) {

        String sql = "SELECT u.id, u.name,username,password,email,phone,city,rolesid,r.id, r.name as namerole,description, duedate" +
                "  FROM users AS u INNER JOIN roles AS r ON r.id = u.rolesid " +
                "WHERE username = ? AND password = ?";
        List<UserModel> users = query(sql, new UserMapper(), userName, password);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public int save(UserModel user) {

        String sql = "insert into users(name,username,password,email,phone,city,rolesid) " +
                " values(?,?,?,?,?,?,?);";
        return insert(sql, user.getName(), user.getUsername(), user.getPassword(), user.getEmail(), user.getPhone()
                , user.getCity(), user.getRoleId());
    }

    @Override
    public UserModel checkUsername(String username) {
        String sql = "Select * from users where username = ?";
        List<UserModel> lst = query(sql, new UserMapper(), username);
        return lst.isEmpty() ? null : lst.get(0);
    }

    @Override
    public UserModel checkEmail(String email) {
        String sql = "Select *from users where email = ?";
        List<UserModel> lst = query(sql, new UserMapper(), email);
        return lst.isEmpty() ? null : lst.get(0);
    }

    @Override
    public UserModel checkPhone(String phone) {
        String sql = "Select *from users where phone = ?";
        List<UserModel> lst = query(sql, new UserMapper(), phone);
        return lst.isEmpty() ? null : lst.get(0);
    }

    @Override
    public void update(Integer rolesid, Date duedate,Integer id) {
        String sql = "update users set rolesid = ?, duedate = ? where id = ?;";
        update(sql, rolesid, duedate,id);
    }

    @Override
    public UserModel findOne(int id) {
        String sql = "SELECT * FROM users WHERE id = ?";
        List<UserModel> users = query(sql, new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public List<UserModel> findAll() {
        String sql = "SELECT u.id,u.name,username,password,email,phone,city,rolesid,r.id, r.name as namerole, description, duedate" +
                "  FROM users AS u INNER JOIN roles AS r ON r.id = u.rolesid ";
        return query(sql, new UserMapper());

    }

    @Override
    public List<UserModel> findbyphone(String phone) {
        String sql = "SELECT * FROM users WHERE phone = ?";
        return query(sql, new UserMapper(), phone);
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM users WHERE id = ?";
        update(sql, id);
        UserModel userModel = findOne(id);
        if (userModel != null) {
            throw new NullPointerException("Lỗi: null pointer");
        }
    }

    @Override
    public UserModel findByUsername(String username) {
        String sql = "SELECT * FROM users WHERE username = ?";
        List<UserModel> users = query(sql, new UserMapper(), username);
        return users.isEmpty() ? null : users.get(0);
    }

    public List<UserModel> findByPage(int start, int end, List<UserModel> lst) {
        List<UserModel> arr = new ArrayList<>();
        for (int i = start; i <= end; i++) {
            arr.add(lst.get(i));
        }
        return arr;
    }

    @Override
    public int getTotalUserVip() {
        String sql = "SELECT COUNT(*) FROM users WHERE rolesid = 3";
        return count(sql);
    }

    public int updateUser(UserModel userModel){
        String sql = "UPDATE users SET password = ?, email = ?, phone = ? where id = ?";
        update(sql, userModel.getPassword(), userModel.getEmail(), userModel.getPhone(), userModel.getId());
        return userModel.getId();
    }
}
