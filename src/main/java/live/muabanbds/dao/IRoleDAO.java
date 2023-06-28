package live.muabanbds.dao;

import live.muabanbds.dao.impl.RoleDAO;
import live.muabanbds.model.RoleModel;
import live.muabanbds.model.UserModel;

import java.util.List;

public interface IRoleDAO extends GenericDAO<RoleModel> {
    List<RoleModel> findAll();
    RoleModel findOne(int id);
}
