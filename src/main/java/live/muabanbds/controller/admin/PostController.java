package live.muabanbds.controller.admin;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;
import live.muabanbds.utils.FormUtil;
import live.muabanbds.utils.MessageUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet (urlPatterns =  "/admin-post" )

public class PostController extends HttpServlet {

    private PostDAO postDAO = new PostDAO();

    public static List<PostModel> page(HttpServletRequest req, PostDAO postDAO, List<PostModel> lst) {
        String pages=req.getParameter("pagenum");

        if(pages==null){
            pages="1";
        }
        int np=5;
        int page=Integer.parseInt(pages);
        int start = (page-1)*np;
        int end=Math.min(page*np-1,lst.size()-1);
        List<PostModel> lst1= postDAO.findByPage(start,end,lst);
        int numOfPage=lst.size()%np==0?(lst.size()/np):(lst.size()/np+1);
//            req.setAttribute("lst1",lst1);
        req.setAttribute("numOfPage",numOfPage);
        req.setAttribute("currentPage",page);
        return lst1;
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PostModel postModel = FormUtil.toModel(PostModel.class,request);
        String type = request.getParameter("type");
        String url = null;
        if(type!= null && type.equals(SystemConstant.LIST)) {
            List<PostModel> lst =  postDAO.findAll();
            List<PostModel> postModelList = page(request,postDAO,lst);
            request.setAttribute(SystemConstant.MODEL, postModelList);
            url = "/views/admin/post/list.jsp";
        }else if(type!= null && type.equals(SystemConstant.EDIT)){
            if(postModel.getId()!= null) {
                postModel = postDAO.findOne(postModel.getId());
            }
            request.setAttribute(SystemConstant.MODEL, postModel);
            url = "/views/admin/post/edit.jsp";
        }
//        else if(type!=null && type.equals("browse")) {
//            List<PostModel> lst = postDAO.findByStatus();
//            List<PostModel> postModelList = page(request,postDAO,lst);
//            if(postModelList.isEmpty()) {
//                request.setAttribute("empty", "empty");
//            }else {
//                request.setAttribute(SystemConstant.MODEL, postModelList);
//            }
//            url = "/views/admin/post/browse.jsp";
//        }
        MessageUtil.showMessage(request);
        request.getRequestDispatcher(url).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
