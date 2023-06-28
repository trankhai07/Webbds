package live.muabanbds.dao;

import live.muabanbds.dao.GenericDAO;
import live.muabanbds.model.PromotionModel;

import java.util.List;

public interface IPromotionDAO extends GenericDAO<PromotionModel> {
    PromotionModel findOne(int id);
    List<PromotionModel> findAll();
    int save(PromotionModel promotionModel);
    int saveNoImage(PromotionModel promotionModel);
    void delete(int id);
    PromotionModel update(PromotionModel updatePromotion);
}
