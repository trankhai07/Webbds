package live.muabanbds.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.utils.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/api-admin-status")

public class StatusAPI extends HttpServlet {

    private PostDAO postDAO = new PostDAO();

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
        postModel.setDate(new java.sql.Date(new java.util.Date().getTime()));
        postModel.setImage("/template/web/assets/img/hn1.jpg");
        postModel = postDAO.update(postModel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),postModel);
    }
}
