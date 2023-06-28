package live.muabanbds.controller.web;



import com.fasterxml.jackson.databind.ObjectMapper;
import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/trang-chu","/dang-nhap","/thoat","/dang-ky"} )
public class HomeController extends HttpServlet {

    private IUserDAO userDAO = new UserDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        PostDAO pd=new PostDAO();
        List<PostModel> lst1=pd.findByProvince("Hà Nội");
        List<PostModel> lst2=pd.findByProvince("TPHCM");
        List<PostModel> lst3=pd.findNotable();
        request.setAttribute("HNlst",lst1.subList(0,Math.min(lst1.size(),8)));
        request.setAttribute("HCMlst",lst2.subList(0,Math.min(lst2.size(),8)));
        request.setAttribute("NBlst",lst3.subList(0,Math.min(lst3.size(),8)));
        if(message != null && alert != null){
            request.setAttribute("message", MessageUtil.getMessageLogin(message));
            request.setAttribute("alert",alert);
        }

        if(action != null && action.equals("login")){
            request.setAttribute("POST",lst3.subList(0,Math.min(lst3.size(),5)));
            request.getRequestDispatcher("/views/web/login.jsp").forward(request,response);
        }

        else if(action != null && action.equals("logout")){
            SessionUtil.getInstance().removeValue(request,"USERMODEL");
            Cookie[] cookies = request.getCookies();
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("user")) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
                if (cookie.getName().equals("password")) {
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                }
            }
            response.sendRedirect(request.getContextPath()+"/trang-chu");
        }

        else if(action != null && action.equals("sign_up")){
            request.setAttribute("POST",lst3.subList(0,Math.min(lst3.size(),5)));
            request.getRequestDispatcher("/views/web/sign_up.jsp").forward(request,response);
        }
        else{
            request.getRequestDispatcher("/views/web/home.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


        String action = request.getParameter("action");
        Security sc = new Security();

            if(action != null && action.equals("login")){
                UserModel userModel = FormUtil.toModel(UserModel.class,request);
                String password = sc.hashdatabase(userModel.getPassword());
                userModel.setPassword(password);
                userModel = userDAO.findByUserNameAndPassword(userModel.getUsername(),userModel.getPassword());

                if(userModel != null){
                    SessionUtil.getInstance().putValue(request,"USERMODEL",userModel);
                    Cookie cookie = new Cookie("user",userModel.getUsername());
                    Cookie cookie1 = new Cookie("password",userModel.getPassword());
                    cookie.setMaxAge(30*24*60*60);
                    cookie1.setMaxAge(30*24*60*60);
                    response.addCookie(cookie);
                    response.addCookie(cookie1);

                    if(userModel.getRole().getName().equals("User")){
                        response.sendRedirect(request.getContextPath()+"/trang-chu?message=login_success&alert=success");
                    }
                    if(userModel.getRole().getName().equals("Uservip")){
                        response.sendRedirect(request.getContextPath()+"/trang-chu?message=login_success&alert=success");
                    }
                    else if(userModel.getRole().getName().equals("Admin")){
                        response.sendRedirect(request.getContextPath()+"/admin-home");
                    }

                }else{
                    response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=username_password_invalid&alert=error");
                }
            }
            else if(action != null && action.equals("sign_up")){
                response.setContentType( "application/json" );
                UserModel userModel = HttpUtil.of(request.getReader()).toModel(UserModel.class);
                String password = sc.hashdatabase(userModel.getPassword());
                userModel.setPassword(password);
                UserModel userModel1 = userDAO.checkUsername(userModel.getUsername());
                UserModel userModel2 = userDAO.checkEmail(userModel.getEmail());
                UserModel userModel3 = userDAO.checkPhone(userModel.getPhone());
                if(userModel1 == null && userModel2 == null && userModel3 == null && userModel != null){
                    userDAO.save(userModel);
                    ObjectMapper mapper = new ObjectMapper();
                    mapper.writeValue(response.getOutputStream(),userModel);
                }
                else if(userModel1 != null){
                    ObjectMapper mapper = new ObjectMapper();
                    mapper.writeValue(response.getOutputStream(),"username_exist");
                }else if(userModel2 != null){
                    ObjectMapper mapper = new ObjectMapper();
                    mapper.writeValue(response.getOutputStream(),"email_exist");

                }else if(userModel3 != null){
                    ObjectMapper mapper = new ObjectMapper();
                    mapper.writeValue(response.getOutputStream(),"phone_exist");
                }

            }
    }
}
