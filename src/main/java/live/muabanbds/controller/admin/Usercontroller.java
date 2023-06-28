package live.muabanbds.controller.admin;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.IRoleDAO;
import live.muabanbds.dao.IUserDAO;
import live.muabanbds.dao.impl.RoleDAO;
import live.muabanbds.dao.impl.UserDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.model.RoleModel;
import live.muabanbds.model.UserModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.MessageUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin-user"})
public class Usercontroller extends HttpServlet {
    private IUserDAO userDAO = new UserDAO();
    private IRoleDAO roleDAO = new RoleDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String view = "";
        UserModel userModel = FormUtil.toModel(UserModel.class,req);
        if(userModel.getType().equals(SystemConstant.LIST)){

            // phân trang
            String pages=req.getParameter("pagenum");

            if(pages==null){
                pages="1";
            }
            int np=10;
            int page=Integer.parseInt(pages);
            List<UserModel> lst =  userDAO.findAll();
            int start = (page-1)*np;
            int end=Math.min(page*np-1,lst.size()-1);
            List<UserModel> lst1=userDAO.findByPage(start,end,lst);
            int numOfPage=lst.size()%np==0?(lst.size()/np):(lst.size()/np+1);
//            req.setAttribute("lst1",lst1);
            req.setAttribute("numOfPage",numOfPage);
            req.setAttribute("currentPage",page);


            view = "/views/admin/User/list.jsp";
            req.setAttribute(SystemConstant.MODEL,lst1);
            MessageUtil.showMessage(req);
            req.getRequestDispatcher(view).forward(req,resp);
        }
        else if(userModel.getType().equals(SystemConstant.EDIT)){
            if(userModel.getId() != null){
                userModel = userDAO.findOne(userModel.getId());
                RoleModel roleModel = roleDAO.findOne(userModel.getRoleId());
                userModel.getRole().setName(roleModel.getName());
            }
            req.setAttribute(SystemConstant.MODEL,userModel);
            req.setAttribute("namerole",roleDAO.findAll());
            view = "/views/admin/User/edit.jsp";
            MessageUtil.showMessage(req);
            req.getRequestDispatcher(view).forward(req,resp);
        }
        else if(userModel.getType().equals("search")){
            String check = req.getParameter("check");
           if(userModel.getPhone() != "") {
               List<UserModel> lst = userDAO.findbyphone(userModel.getPhone());
               if(lst.size() != 0){
                   RoleModel roleModel = roleDAO.findOne(lst.get(0).getRoleId());
                   lst.get(0).getRole().setName(roleModel.getName());
               }
               req.setAttribute(SystemConstant.MODEL, lst);
               req.setAttribute("check",check);
               view = "/views/admin/User/list.jsp";
               MessageUtil.showMessage(req);
               req.getRequestDispatcher(view).forward(req, resp);
            }
           else{
               resp.sendRedirect(req.getContextPath()+"/admin-user?type=list");
           }
        }


    }
}
