package live.muabanbds.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel{
    private Integer id;
    private Integer[] ids;
    private String type;




    public Integer[] getIds() {
        return ids;
    }

    public void setIds(Integer[] ids) {
        this.ids = ids;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

}
