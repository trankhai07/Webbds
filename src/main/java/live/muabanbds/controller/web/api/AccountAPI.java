package live.muabanbds.controller.web.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.HttpUtil;
import live.muabanbds.utils.Security;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/api-web-account")
public class AccountAPI extends HttpServlet{
    private UserDAO userDAO = new UserDAO();
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        UserModel userModel = HttpUtil.of(request.getReader()).toModel(UserModel.class);
        userModel.setPassword(new Security().hashdatabase(userModel.getPassword()));
        int id = userDAO.updateUser(userModel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),id);
    }
}
