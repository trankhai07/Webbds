package live.muabanbds.filter;

import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
       HttpServletRequest request = (HttpServletRequest) servletRequest;
       HttpServletResponse response = (HttpServletResponse) servletResponse;
        IUserDAO userDAO = new UserDAO();
        if (request.getCookies() != null) {
            Cookie[] cookies = request.getCookies();
            String username = "";
            String password = "";
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("user") ) {
                    username = cookie.getValue();
                }
                if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
            }
            if (!username.equals("") && !password.equals("")) {
                UserModel userModel = userDAO.findByUserNameAndPassword(username, password);
                if (userModel != null) {
                    if (userModel.getRoleId()==3 && userModel.getDuedate().getTime() < System.currentTimeMillis()) {
                        userModel.setRoleId(2);
                        userDAO.update(userModel.getRoleId(),userModel.getDuedate(),userModel.getId());
                    }
                    SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
                }
            }

        }

       String url  = request.getRequestURI();
       if(url.startsWith("/admin")){
           UserModel userModel = (UserModel) SessionUtil.getInstance().getValue(request,"USERMODEL");

           if(userModel != null){
               if(userModel.getRole().getName().equals("Admin")){
                   filterChain.doFilter(servletRequest,servletResponse);
               }
               else if(userModel.getRole().getName().equals("User") || userModel.getRole().getName().equals("Uservip") ){
                   response.sendRedirect(request.getContextPath()+"/trang-chu?message=not_permission&alert=error");
               }
           }else{
               response.sendRedirect(request.getContextPath()+"/dang-nhap?action=login&message=not_login&alert=error");
           }
       }
       else{
           filterChain.doFilter(servletRequest,servletResponse);
       }
    }

    @Override
    public void destroy() {

    }
}
