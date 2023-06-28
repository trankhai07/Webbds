package live.muabanbds.dao.impl;

import live.muabanbds.dao.IPromotionDAO;
import live.muabanbds.mapper.PromotionMapper;
import live.muabanbds.model.PromotionModel;

import java.util.List;

public class PromotionDAO  extends AbstractDAO<PromotionModel> implements IPromotionDAO {

    @Override
    public PromotionModel findOne(int id) {
        String sql = "SELECT * FROM promotion WHERE id = ?";
        return query(sql,new PromotionMapper(),id).get(0);
    }

    @Override
    public List<PromotionModel> findAll() {
        String sql = "SELECT * FROM promotion";
        return query(sql,new PromotionMapper());
    }

    @Override
    public int save(PromotionModel promotionModel) {
        String sql = "INSERT INTO promotion(name,summary,content,image,usersid,date) VALUES(?,?,?,?,?,?)";
        return insert(sql,promotionModel.getName(),promotionModel.getSummary(),promotionModel.getContent(),
                promotionModel.getImage(),promotionModel.getUserId(),promotionModel.getPostedDate());
    }

    @Override
    public int saveNoImage(PromotionModel promotionModel) {
        String sql = "INSERT INTO promotion(name,summary,content,usersid,date) VALUES(?,?,?,?,?)";
        return insert(sql,promotionModel.getName(),promotionModel.getSummary(),promotionModel.getContent(),
                promotionModel.getUserId(),promotionModel.getPostedDate());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM promotion WHERE id = ?";
        update(sql,id);
    }

    @Override
    public PromotionModel update(PromotionModel updatePromotion) {
        String sql = "UPDATE promotion SET name = ?, summary = ?, content = ?, image = ?, usersid = ?, date = ? WHERE id = ?";
        update(sql,updatePromotion.getName(),updatePromotion.getSummary(),updatePromotion.getContent(),
                updatePromotion.getImage(),updatePromotion.getUserId(),updatePromotion.getPostedDate(),updatePromotion.getId());
        return findOne(updatePromotion.getId());
    }
}
