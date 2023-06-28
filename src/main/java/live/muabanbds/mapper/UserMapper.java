package live.muabanbds.mapper;

import live.muabanbds.model.RoleModel;
import live.muabanbds.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet resultSet) {
        UserModel user = new UserModel();
        try {
            user.setId(resultSet.getInt("id"));
            user.setName(resultSet.getNString("name"));
            user.setUsername(resultSet.getNString("username"));
            user.setPassword(resultSet.getNString("password"));
            user.setEmail(resultSet.getNString("email"));
            user.setPhone(resultSet.getNString("phone"));
            user.setCity(resultSet.getNString("city"));
            user.setRoleId(resultSet.getInt("rolesid"));
            user.setEmail(resultSet.getString("email"));
            user.setDuedate(resultSet.getDate("duedate"));
            // try catch vì có thể không inner join với bảng role
            try {
                RoleModel role = new RoleModel();
                role.setName(resultSet.getNString("namerole"));
                role.setDescription(resultSet.getNString("description"));

                user.setRole(role);
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
            return user;
        } catch (SQLException e) {
            return null;
        }
    }
}
