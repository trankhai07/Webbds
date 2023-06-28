package live.muabanbds.controller.web;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.IPromotionDAO;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.dao.impl.PromotionDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.PromotionModel;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/khuyen-mai"} )
public class PromotionController extends HttpServlet {

    private IPromotionDAO promotionDAO = new PromotionDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String views = "";
        if (type.equalsIgnoreCase("danh-sach") ) {
            List<PromotionModel> modelList = new ArrayList<>();
            modelList = promotionDAO.findAll();
            request.setAttribute(SystemConstant.MODEL, modelList);
            views = "/views/web/promotion.jsp";
        } else if (type.equalsIgnoreCase("chi-tiet")) {
            int id = Integer.parseInt(request.getParameter("id"));
            PromotionModel promotionModel = new PromotionModel();
            promotionModel = promotionDAO.findOne(id);
            request.setAttribute(SystemConstant.MODEL, promotionModel);
            views = "/views/web/promotionDetails.jsp";
        }
        PostDAO pd=new PostDAO();
        List<PostModel> lst=pd.findNotable();
        request.setAttribute("POST",lst.subList(0,Math.min(lst.size(),5)));
        request.getRequestDispatcher(views).forward(request,response);
    }
}
