package live.muabanbds.controller.web.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.HttpUtil;
import live.muabanbds.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/api-web-post")

public class NewPostAPI extends HttpServlet {

    private PostDAO postDAO = new PostDAO();
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
        postModel.setDate(new java.sql.Date(new java.util.Date().getTime()));
        UserModel userModel = (UserModel) (SessionUtil.getInstance().getValue(request,"USERMODEL") );
        postModel.setUsersid(userModel.getId());
        int id = postDAO.upNewPost(postModel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),postDAO.findOne(id));
    }
}
