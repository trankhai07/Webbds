package live.muabanbds.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (urlPatterns = "/api-admin-post")
public class PostAPI extends HttpServlet {

    private PostDAO postDAO = new PostDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
        postModel.setDate(new java.sql.Date(new java.util.Date().getTime()));
        postModel.setImage("/template/web/assets/img/nha-pho-anh-thang-1.jpg");
        int id = postDAO.save(postModel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),postDAO.findOne(id));
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
        postModel.setDate(new java.sql.Date(new java.util.Date().getTime()));
        postModel.setImage("/template/web/assets/img/nha-pho-anh-thang-1.jpg");
        postModel = postDAO.update(postModel);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),postModel);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType( "application/json" );
        PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
        for (int id:postModel.getIds()) {
            postDAO.delete(id);
        }
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(response.getOutputStream(),"{}");
    }
}
