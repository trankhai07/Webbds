package live.muabanbds.dao.impl;

import live.muabanbds.dao.IRoleDAO;
import live.muabanbds.mapper.RoleMapper;
import live.muabanbds.mapper.UserMapper;
import live.muabanbds.model.RoleModel;
import live.muabanbds.model.UserModel;

import java.util.List;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO {

    @Override
    public List<RoleModel> findAll() {
        String sql = "SELECT * FROM real_estate.roles";
        return query(sql,new RoleMapper());
    }

    @Override
    public RoleModel findOne(int id) {
        String sql = "SELECT * FROM roles WHERE id = ?";
        return query(sql,new RoleMapper(),id).get(0);
    }
}
