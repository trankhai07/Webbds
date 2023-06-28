package live.muabanbds.mapper;

import live.muabanbds.model.PromotionModel;
import live.muabanbds.utils.MessageUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

public class PromoImgMapper implements IFileMapper<PromotionModel> {

    public PromotionModel toModel(ServletFileUpload upload, File uploadImgDir, HttpServletRequest request) {
        PromotionModel model = new PromotionModel();
        try {
            // Đọc dữ liệu được gửi từ client
            List<FileItem> formItems = upload.parseRequest(request);
            // media
            if (formItems != null && formItems.size() > 0) {
                for (FileItem item : formItems) {
                    if (!item.isFormField() && item.getSize() != 0) {
                        String fileName = new File(item.getName()).getName();
                        String filePath = null;

                        if (item.getFieldName().equals("image")) {
                            model.setImage( "/template/web/assets/img/" + fileName);
                            filePath = uploadImgDir + File.separator + fileName;
                        }
                        File storeFile = new File(filePath);
                        // Lưu trữ file vào đĩa cứng
                        try {
                            item.write(storeFile);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    } else {
                        if (item.getFieldName().equals("name")) {
                            model.setName(item.getString());
                        }
                        if (item.getFieldName().equals("content") && item.getSize() != 0) {
                            model.setContent(item.getString());
                        }
                        if (item.getFieldName().equals("summary")) {
                            model.setSummary(item.getString());
                        }
                        if (item.getFieldName().equals("id")) {
                            model.setId(Integer.parseInt(item.getString()));
                        }
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("message", MessageUtil.getMessageLogin("create_error"));
        }
        return model;
    }
}
