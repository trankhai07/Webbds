package live.muabanbds.utils;

import live.muabanbds.constant.SystemConstant;
import live.muabanbds.mapper.IFileMapper;
import live.muabanbds.mapper.PromoImgMapper;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

public class UploadUtil {
    public static <T,M> T uploadFile(HttpServletRequest request, IFileMapper<M> mapper) {
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setDefaultCharset("UTF-8");
        factory.setSizeThreshold(SystemConstant.MEMORY_THRESHOLD);
        factory.setRepository(new java.io.File(System.getProperty("java.io.tmpdir")));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setFileSizeMax(SystemConstant.MAX_FILE_SIZE);
        upload.setSizeMax(SystemConstant.MAX_REQUEST_SIZE);
        String uploadImgPath = SystemConstant.UPLOAD_IMG_DIRECTORY;
        File uploadImgDir = new File( uploadImgPath);
        if (!uploadImgDir.exists()) {
            uploadImgDir.mkdir();
        }
        T model ;
        model = (T) mapper.toModel(upload, uploadImgDir, request);
        return model;
    }
}
