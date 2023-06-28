package live.muabanbds.controller.web;

import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.paging.PageRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

import static java.util.Collections.min;

@WebServlet(urlPatterns = {"/post"} )
public class PostController  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_raw=request.getParameter("id");
        PostDAO pd=new PostDAO();
        try{
            int id=Integer.parseInt(id_raw);
            PostModel post=pd.findOne(id);
            System.out.println(post.getDate());
            request.setAttribute("detail_post",post);
            request.setAttribute("pagefrom",post.getSumarryAddress());
            request.getRequestDispatcher("/views/web/realEstateDetails.jsp").forward(request,response);
        }
        catch (Exception e){
            System.out.println(e);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
