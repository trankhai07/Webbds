package live.muabanbds.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.HttpUtil;
import live.muabanbds.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-admin-user"})
public class UserAPI extends HttpServlet {
    private IUserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType( "application/json" );
        UserModel userModel = HttpUtil.of(req.getReader()).toModel(UserModel.class);
//        int id = userDAO.save(userModel);
        ObjectMapper mapper = new ObjectMapper();
//        mapper.writeValue(resp.getOutputStream(),userDAO.findOne(id));
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType( "application/json");
        UserModel userModel = HttpUtil.of(req.getReader()).toModel(UserModel.class);

        userDAO.update(userModel.getRoleId(),userModel.getDuedate(),userModel.getId());

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(),userDAO.findOne(userModel.getId()));
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType( "application/json" );

        UserModel userModel = HttpUtil.of(req.getReader()).toModel(UserModel.class);
        for(int i = 0;i < userModel.getIds().length;i ++){
             userDAO.delete(userModel.getIds()[i]);
        }
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(),"{}");
    }
}
