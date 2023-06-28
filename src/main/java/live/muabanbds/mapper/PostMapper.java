package live.muabanbds.mapper;

import live.muabanbds.model.PostModel;
import live.muabanbds.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PostMapper implements RowMapper<PostModel>{

    @Override
    public PostModel mapRow(ResultSet resultSet) {
        try {
            PostModel postModel = new PostModel();
            postModel.setDate(resultSet.getDate("date"));
            postModel.setId(resultSet.getInt("id"));
            postModel.setOwner_name(resultSet.getString("owner_name"));
            postModel.setTitle(resultSet.getString("title"));
            postModel.setPhone(resultSet.getString("phone"));
            postModel.setAddress(resultSet.getString("address"));
            postModel.setEstate_type(resultSet.getString("estate_type"));
            postModel.setPost_form(resultSet.getString("post_form"));
            postModel.setPost_type(resultSet.getString("post_type"));
            postModel.setArea(resultSet.getInt("area"));
            postModel.setPrice(resultSet.getInt("price"));
            postModel.setImage(resultSet.getString("image"));
            postModel.setFloor(resultSet.getInt("floor"));
            postModel.setFrontispiece(resultSet.getInt("frontispiece"));
            postModel.setWc(resultSet.getInt("wc"));
            postModel.setBedroom(resultSet.getInt("bedroom"));
            postModel.setInterior(resultSet.getString("interior"));
            postModel.setDirect(resultSet.getString("direct"));
            postModel.setStatus(resultSet.getString("status"));
            UserModel userModel = new UserModel();
            userModel.setId(resultSet.getInt("usersid"));
            postModel.setUser(userModel);
            postModel.setUsersid(resultSet.getInt("usersid"));
            return postModel;
        }catch (SQLException e ) {
            return null;
        }
    }
}
