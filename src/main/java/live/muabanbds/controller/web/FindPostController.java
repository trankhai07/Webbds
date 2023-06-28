package live.muabanbds.controller.web;

import live.muabanbds.dao.impl.PostDAO;
import live.muabanbds.model.PostModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/find-post"} )
public class FindPostController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title1=req.getParameter("title1");
        String postType1=req.getParameter("postType1");
        String estateType1=req.getParameter("estateType1");
        String province1=req.getParameter("province1");
        String district1=req.getParameter("district1");
        String minArea1=req.getParameter("minArea1");
        String maxArea1=req.getParameter("maxArea1");
        String priceRange1=req.getParameter("priceRange1");
        String pages=req.getParameter("pagenum");
        String type_raw=req.getParameter("type");
        String pageFrom=req.getParameter("pagefrom");
        String postForm=req.getParameter("postform1");
        if (district1 != null) {
            district1 = district1.replace("Quận ", "");
            district1 = district1.replace("Huyện ", "");
        }
        int np=12;
        int type=2;
        int page=0;
        int minArea=0;
        int maxArea=1000000;
        int minPrice=0;
        int maxPrice=1000000;
        List<PostModel> lst=null;
        PostDAO pd=new PostDAO();
        HttpSession ss = req.getSession();
        if(type_raw!=null){
            type=Integer.parseInt(type_raw);
        }
        if(pages==null){
            pages="1";
        }
        try {
            page = Integer.parseInt(pages);
        }
        catch(Exception e){
            System.out.println(e);
        }
        if(type==1) {
            try {
                minArea = Integer.parseInt(minArea1);
                maxArea = Integer.parseInt(maxArea1);
            } catch (Exception e) {
                minArea = 0;
                maxArea = 1000000;
            }
             minPrice = FindPostController.getMinPrice(priceRange1);
             maxPrice = FindPostController.getMaxPrice(priceRange1);
            lst =pd.findByForm(title1,postType1,province1,district1,estateType1,minArea,maxArea,minPrice,maxPrice);
            ss.setAttribute("lst",lst);
        }
        if(postForm!=null &&type==1){
            lst=pd.findNotable();
            ss.setAttribute("lst",lst);
        }
//        System.out.println("pr: "+priceRange1);
//        System.out.println("t: "+title1);
//        System.out.println("pt: "+postType1);
//        System.out.println("pro: "+province1);
//        System.out.println("dis: "+district1);
//        System.out.println(estateType1+" m: "+minArea+" "+maxArea+" "+" "+minPrice+" "+maxPrice);
//        System.out.println("pf: "+pageFrom);
//        System.out.println("type: "+type);

        lst=(List<PostModel>)ss.getAttribute("lst");
//        System.out.println("lst: "+lst.size());
        int start = (page-1)*np;
        int end=Math.min(page*np-1,lst.size()-1);
        List<PostModel> lst1=pd.findByPage(start,end,lst);
        int numOfPage=lst.size()%np==0?(lst.size()/np):(lst.size()/np+1);

        req.setAttribute("lst1",lst1);
        req.setAttribute("numOfPage",numOfPage);
        req.setAttribute("currentPage",page);
        req.setAttribute("type",2);
        req.setAttribute("pagefrom",pageFrom);
        req.getRequestDispatcher("/views/web/hanoirealestate.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
    public static int getMinPrice(String pr){
        if(pr.startsWith("Dưới"))  return 0;
        if(pr.startsWith("Trên")) return 60;
        if(pr.endsWith("triệu") && !pr.startsWith("Dưới")){
            String[] a=pr.split(" ");
            return Integer.parseInt(a[0]);
        }
        if(pr.endsWith("tỷ") && !pr.startsWith("Trên")){
            String[] a=pr.split(" ");
            return Integer.parseInt(a[0])*1000;
        }
        return 0;
    }
    public static int getMaxPrice(String pr){
        if(pr.startsWith("Dưới"))  return 3;
        if(pr.startsWith("Trên")) return 10000000;
        if(pr.endsWith("triệu") && !pr.startsWith("Dưới")){
            String[] a=pr.split(" ");
            return Integer.parseInt(a[2]);
        }
        if(pr.endsWith("tỷ") && !pr.startsWith("Trên")){
            String[] a=pr.split(" ");
            return Integer.parseInt(a[2])*1000;
        }
        return 1000000;
    }
}
