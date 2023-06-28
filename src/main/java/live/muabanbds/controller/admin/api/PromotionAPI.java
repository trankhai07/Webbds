package live.muabanbds.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.PromotionDAO;
import live.muabanbds.mapper.PromoImgMapper;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.HttpUtil;
import live.muabanbds.utils.SessionUtil;
import live.muabanbds.utils.UploadUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-promo"})
public class PromotionAPI extends HttpServlet {
    private PromotionDAO promotionDAO = new PromotionDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PromotionModel promotionmodel = UploadUtil.uploadFile(request,new PromoImgMapper());
        promotionmodel.setPostedDate(new java.sql.Date(new java.util.Date().getTime()));
        UserModel userModel = (UserModel) (SessionUtil.getInstance().getValue(request,"USERMODEL") );
        promotionmodel.setUserId( userModel.getId() );
//        promotionmodel.setUserId(1);
        int id = promotionDAO.save(promotionmodel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),promotionDAO.findOne(id));
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PromotionModel updatePromotion = UploadUtil.uploadFile(request,new PromoImgMapper());
        updatePromotion.setPostedDate(new java.sql.Date(new java.util.Date().getTime()));
        updatePromotion.setUserId(((UserModel) (SessionUtil.getInstance().getValue(request,"USERMODEL"))).getId());
//        updatePromotion.setUserId(1);
        if (updatePromotion.getImage() == null) updatePromotion.setImage(promotionDAO.findOne(updatePromotion.getId()).getImage());
        updatePromotion = promotionDAO.update(updatePromotion);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),updatePromotion);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PromotionModel promotionModel = HttpUtil.of(request.getReader()).toModel(PromotionModel.class);
        for (int id:promotionModel.getIds()) {
            promotionDAO.delete(id);
        }
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),"{}");
    }
}
