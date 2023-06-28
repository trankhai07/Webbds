package live.muabanbds.model;

import java.util.Date;

public class PromotionModel extends AbstractModel {
    private String name;
    private String summary;
    private String content;
    private String image;
    private int userId;
    private Date postedDate;

    public PromotionModel() {
    }

    public PromotionModel(String name, String summary, String content, String image, int userId, Date postedDate) {
        this.name = name;
        this.summary = summary;
        this.content = content;
        this.image = image;
        this.userId = userId;
        this.postedDate = postedDate;
    }

    public String getName() {
        return name;
    }

    public String getSummary() {
        return summary;
    }

    public String getContent() {
        return content;
    }

    public String getImage() {
        return image;
    }

    public int getUserId() {
        return userId;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }
}
