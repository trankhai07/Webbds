package live.muabanbds.dao.impl;

import live.muabanbds.dao.IUserDAO;

import live.muabanbds.dao.IPostDAO;
import live.muabanbds.mapper.PostMapper;

import live.muabanbds.model.PostModel;

import java.util.ArrayList;
import java.util.List;
public class PostDAO extends AbstractDAO<PostModel> implements IPostDAO {

    @Override
    public PostModel findOne(int id) {
        String sql = "SELECT * FROM posts WHERE id = ?";
        List<PostModel> list = query(sql, new PostMapper(), id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public List<PostModel> findAll() {
        String sql = "select * from posts";
        return query(sql,new PostMapper());
    }
    public List<PostModel> findNotable() {
        String sql="select * from real_estate.posts where post_form=\"Tin nổi bật trang chủ\" and status = 1 ";
        return query(sql,new PostMapper());
    }
    public List<PostModel> findByForm(String title, String postType,String province,String district, String estateType,int minArea,int maxArea,int minPrice,int maxPrice){
        String sql="select * from real_estate.posts\n" +
                "                where (title like ?) \n" +
                "                and (post_type like ?)\n" +
                "                and (address like ?)\n" +
                " and (estate_type like ?)\n" +
                "                and (?<= area and area<=?)\n" +
                "                and (?<=price and price<=?)";

        return query(sql,new PostMapper(),"%"+title+"%","%"+postType+"%","%"+district+", "+province+"%","%"+estateType+"%",minArea,maxArea,minPrice,maxPrice);
    }
    public List<PostModel> findByPage(int start,int end,List<PostModel> lst){
        List<PostModel> arr=new ArrayList<>();
        for(int i=start;i<=end;i++){
            arr.add(lst.get(i));
        }
        return arr;
    }

    @Override
    public int save(PostModel postModel) {
        String sql = "INSERT INTO posts (owner_name, title, phone, address, estate_type, post_type, post_form, area, price, date, status, usersid, image)" +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, postModel.getOwner_name(), postModel.getTitle(),postModel.getPhone(),
                postModel.getAddress(),postModel.getEstate_type(),postModel.getPost_type(),
                postModel.getPost_form(), postModel.getArea(),postModel.getPrice(),postModel.getDate(),
                Integer.parseInt(postModel.getStatus()), postModel.getUsersid(),postModel.getImage());
    }

    @Override
    public int getTotalItem() {
        return 0;
    }

    @Override
    public PostModel update(PostModel postModel) {
        String sql = "UPDATE posts SET owner_name = ?, title = ?, phone = ?, address = ?, estate_type = ?, "
                + "post_type = ?, post_form = ?, area = ?, price = ?, date = ?, status = ?, usersid = ?, image = ? WHERE id = ?";
        update(sql, postModel.getOwner_name(), postModel.getTitle(),postModel.getPhone(),
                postModel.getAddress(),postModel.getEstate_type(),postModel.getPost_type(),
                postModel.getPost_form(),postModel.getArea(),
                postModel.getPrice(),postModel.getDate(),Integer.parseInt(postModel.getStatus()),
                postModel.getUsersid(),postModel.getImage(),postModel.getId());
        return findOne(postModel.getId());

    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM posts WHERE id = ?";
        update(sql,id);
    }

    @Override
    public List<PostModel> findByStatus() {
        String sql = "SELECT * from posts where status = 0";
        return query(sql, new PostMapper());
    }

    @Override
    public int getTotalItemByStatus(int status) {
        String sql = "SELECT count(*) from posts where status = ?";
        return count(sql, status);
    }

    @Override
    public int getTotalItemByMonth(int month) {
        String sql = "SELECT count(*) from posts where month(date) = ?";
        return count(sql, month);
    }

    public List<PostModel> findByProvince(String province) {
        String sql = "SELECT * from posts where address like ?";
        return query(sql, new PostMapper(),"%"+province+"%");
    }
    @Override
    public int upNewPost(PostModel postModel) {
        String sql = "INSERT INTO posts (owner_name, phone, address, estate_type, post_type, post_form, area, price, date, status, floor,frontispiece,bedroom,interior,wc,direct,usersid)" +
                "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        return insert(sql, postModel.getOwner_name(),postModel.getPhone(),
                postModel.getAddress(),postModel.getEstate_type(),postModel.getPost_type(),
                postModel.getPost_form(), postModel.getArea(),postModel.getPrice(),
                postModel.getDate(), 0, postModel.getFloor(),postModel.getFrontispiece(),
                postModel.getBedroom(),postModel.getInterior(), postModel.getWc(),
                postModel.getDirect(), postModel.getUsersid());
    }

}
