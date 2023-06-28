package live.muabanbds.controller.web.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.ContactDAO;
import live.muabanbds.model.ContactModel;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(urlPatterns ={"/api-web-contact"})
public class ContactAPI extends HttpServlet {
    private ContactDAO contactDAO = new ContactDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ContactModel contactModel;
        contactModel = FormUtil.toModel(ContactModel.class,req);
        int id = contactDAO.save(contactModel);
        resp.sendRedirect(req.getContextPath()+"/lien-he?message=request_success&alert=success");
    }
}
