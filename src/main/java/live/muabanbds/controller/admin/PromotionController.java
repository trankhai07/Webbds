package live.muabanbds.controller.admin;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.IPromotionDAO;
import live.muabanbds.dao.impl.PromotionDAO;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.utils.MessageUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/admin-promo"})
public class PromotionController extends HttpServlet {
    private IPromotionDAO promotionDAO = new PromotionDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String views = "";
        if(type != null && type.equals(SystemConstant.LIST)){
            ArrayList<PromotionModel> listPromotion = (ArrayList<PromotionModel>) promotionDAO.findAll();
            request.setAttribute("model",listPromotion);
            views = "/views/admin/promotion/list.jsp";
        } else if (type.equals(SystemConstant.EDIT) ) {
            String idRaw = request.getParameter("id");
            PromotionModel model = new PromotionModel();
            if (idRaw != null) {
                Integer id = Integer.parseInt(idRaw);
                model = promotionDAO.findOne(id);
            }
            request.setAttribute("model",model);
            views = "/views/admin/promotion/edit.jsp";
        }
        MessageUtil.showMessage(request);
        request.getRequestDispatcher(views).forward(request,response);

    }
}
