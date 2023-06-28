package live.muabanbds.mapper;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

public interface IFileMapper<T> {
    T toModel(ServletFileUpload upload, File uploadImgDir, HttpServletRequest request);
}
