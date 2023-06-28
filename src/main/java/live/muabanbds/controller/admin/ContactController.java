package live.muabanbds.controller.admin;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.IContactDAO;
import live.muabanbds.dao.impl.ContactDAO;
import live.muabanbds.model.ContactModel;
import live.muabanbds.utils.MessageUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-contact"})
public class ContactController extends HttpServlet {
    private IContactDAO contactDAO = new ContactDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String type = request.getParameter("type");
        String views = "";
        if(type != null && type.equals(SystemConstant.LIST)){
            ArrayList<ContactModel> contactModels = (ArrayList<ContactModel>) contactDAO.findAll();
            request.setAttribute("model",contactModels);
            String pages=request.getParameter("pagenum");

            if(pages==null){
                pages="1";
            }
            int np=10;
            int page=Integer.parseInt(pages);
            List<ContactModel> lst =  contactDAO.findAllWithSort("createddate DESC");
            int start = (page-1)*np;
            int end=Math.min(page*np-1,lst.size()-1);
            List<ContactModel> lst1=contactDAO.findByPage(start,end,lst);
            int numOfPage=lst.size()%np==0?(lst.size()/np):(lst.size()/np+1);
            request.setAttribute("numOfPage",numOfPage);
            request.setAttribute("currentPage",page);


            request.setAttribute(SystemConstant.MODEL,lst1);
            views = "/views/admin/contact/list.jsp";
        }
        MessageUtil.showMessage(request);
        request.getRequestDispatcher(views).forward(request,response);
    }
}
