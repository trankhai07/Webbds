package live.muabanbds.mapper;

import live.muabanbds.model.PromotionModel;
import live.muabanbds.model.RoleModel;

import java.sql.ResultSet;

public class RoleMapper implements RowMapper<RoleModel> {
    @Override
    public RoleModel mapRow(ResultSet resultSet) {
        try {
            RoleModel roleModel = new RoleModel();
            roleModel.setId(resultSet.getInt("id"));
            roleModel.setName(resultSet.getNString("name"));
            roleModel.setDescription(resultSet.getNString("description"));

            return roleModel;
        } catch (Exception e) {
            return null;
        }
    }
}
