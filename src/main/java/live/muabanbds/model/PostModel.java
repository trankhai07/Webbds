package live.muabanbds.model;

import java.util.Date;

public class PostModel extends  AbstractModel{

    private Date date;
    private String title;
    private String owner_name;
    private String phone;
    private String address;
    private String estate_type;
    private String post_type;
    private String post_form;
    private int area;
    private int price;
    private String image;
    private int floor;
    private int frontispiece;
    private int bedroom;
    private int wc;
    private String interior;
    private String direct;
    private String status;
    private int usersid;
    private UserModel user;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    public String getOwner_name() {
        return owner_name;
    }
    public void setOwner_name(String owner_name) {
        this.owner_name = owner_name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getEstate_type() {
        return estate_type;
    }
    public void setEstate_type(String estate_type) {
        this.estate_type = estate_type;
    }
    public String getPost_type() {
        return post_type;
    }
    public void setPost_type(String post_type) {
        this.post_type = post_type;
    }
    public String getPost_form() {
        return post_form;
    }

    public void setPost_form(String post_form) {
        this.post_form = post_form;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }
    public String getSumarryAddress(){
        String[] a=this.address.split(",");
        return a[a.length-1];
    }
    public String getDistrict(){
        String[] a=this.address.split(",");
        return a[a.length-2];
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public int getFrontispiece() {
        return frontispiece;
    }

    public void setFrontispiece(int frontispiece) {
        this.frontispiece = frontispiece;
    }

    public int getBedroom() {
        return bedroom;
    }

    public void setBedroom(int bedroom) {
        this.bedroom = bedroom;
    }

    public int getWc() {
        return wc;
    }

    public void setWc(int wc) {
        this.wc = wc;
    }

    public String getInterior() {
        return interior;
    }

    public void setInterior(String interior) {
        this.interior = interior;
    }

    public String getDirect() {
        return direct;
    }

    public void setDirect(String direct) {
        this.direct = direct;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getUsersid() {
        return usersid;
    }

    public void setUsersid(int usersid) {
        this.usersid = usersid;
    }

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }
}
