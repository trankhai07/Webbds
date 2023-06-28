package live.muabanbds.controller.web;

import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.utils.MessageUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet (urlPatterns =  "/new-post")

public class NewPostController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MessageUtil.showMessage(request);
        PostDAO pd=new PostDAO();
        List<PostModel> lst=pd.findNotable();
        request.setAttribute("POST",lst.subList(0,Math.min(lst.size(),5)));
        request.getRequestDispatcher("/views/web/newPost.jsp").forward(request,response);
    }
}
