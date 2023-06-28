package live.muabanbds.controller.web;



import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.PromotionModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.MessageUtil;
import live.muabanbds.utils.SessionUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/tai-khoan"} )
public class AccountController extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MessageUtil.showMessage(request);
        request.getRequestDispatcher("/views/web/account.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
