package live.muabanbds.mapper;

import live.muabanbds.model.PromotionModel;

import java.sql.ResultSet;

public class PromotionMapper implements RowMapper<PromotionModel> {

    @Override
    public PromotionModel mapRow(ResultSet resultSet) {
        try {
            PromotionModel promotionModel = new PromotionModel();
            promotionModel.setId(resultSet.getInt("id"));
            promotionModel.setName(resultSet.getString("name"));
            promotionModel.setSummary(resultSet.getString("summary"));
            promotionModel.setContent(resultSet.getString("content"));
            promotionModel.setImage(resultSet.getString("image"));
            promotionModel.setUserId(resultSet.getInt("usersid"));
            promotionModel.setPostedDate(resultSet.getDate("date"));
            return promotionModel;
        } catch (Exception e) {
            return null;
        }
    }
}
