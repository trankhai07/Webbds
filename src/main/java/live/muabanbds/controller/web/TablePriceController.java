package live.muabanbds.controller.web;

import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/bang-gia"} )
public class TablePriceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PostDAO pd=new PostDAO();
        List<PostModel> lst=pd.findNotable();
        req.setAttribute("POST",lst.subList(0,Math.min(lst.size(),5)));
        req.getRequestDispatcher("/views/web/tablePrice.jsp").forward(req,resp);
    }
}
