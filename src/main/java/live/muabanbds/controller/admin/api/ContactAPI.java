package live.muabanbds.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.impl.ContactDAO;
import live.muabanbds.model.ContactModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.HttpUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns ={"/api-admin-contact"})
public class ContactAPI extends HttpServlet {
    private ContactDAO contactDAO = new ContactDAO();
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType( "application/json" );
        ContactModel contactModel = HttpUtil.of(req.getReader()).toModel(ContactModel.class);
        for (int id: contactModel.getIds()){
            contactDAO.delete(id);
        }
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getOutputStream(),"{}");
    }
}
