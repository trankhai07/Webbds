package live.muabanbds.controller.admin;


import live.muabanbds.dao.IContactDAO;
import live.muabanbds.dao.IPostDAO;
import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.ContactDAO;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.dao.impl.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-home"} )
public class HomeController extends HttpServlet {
    private IUserDAO userDAO = new UserDAO();
    private IContactDAO contactDAO = new ContactDAO();
    private IPostDAO postDAO = new PostDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int totalUserVip = userDAO.getTotalUserVip();
        String currentDate = java.time.LocalDate.now().toString();
        int totalContact = contactDAO.getTotalItemByDate(currentDate);
        int totalPostPending = postDAO.getTotalItemByStatus(0);
        int totalPostInMonth = postDAO.getTotalItemByMonth(Integer.parseInt(currentDate.substring(5,7)));
        request.setAttribute("totalContact",totalContact);
        request.setAttribute("totalUserVip",totalUserVip);
        request.setAttribute("totalPostPending",totalPostPending);
        request.setAttribute("totalPostInMonth",totalPostInMonth);
        request.getRequestDispatcher("/views/admin/home.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
