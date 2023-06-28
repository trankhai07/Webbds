package live.muabanbds.dao;


import live.muabanbds.model.UserModel;

import java.sql.*;
import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel>{
    UserModel findByUserNameAndPassword(String userName, String password);
    UserModel checkUsername(String username);
    UserModel checkEmail(String email);
    UserModel checkPhone(String phone);
    UserModel findByUsername(String username);
    int save(UserModel user);
    void update(Integer rolesid,Date duedate,  Integer id );
    UserModel findOne(int id);
    List<UserModel> findAll();
    List<UserModel> findbyphone(String phone);
    List<UserModel> findByPage(int start,int end,List<UserModel> lst);
    int getTotalUserVip();

    void delete(int id);
}
