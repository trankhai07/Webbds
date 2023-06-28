package live.muabanbds.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class MessageUtil {
	
	public static void showMessage(HttpServletRequest request) {
		if (request.getParameter("message") != null) {
			String messageResponse = "";
			String alert = "";
			String message = request.getParameter("message");
			if (message.equals("insert_success")) {
				messageResponse = "Thêm thành công";
				alert = "success";
			} else if (message.equals("update_success")) {
				messageResponse = "Cập nhật thành công";
				alert = "success";
			} else if (message.equals("delete_success")) {
				messageResponse = "Xoá thành công";
				alert = "success";
			} else if (message.equals("error_system")) {
				messageResponse = "Lỗi hệ thống";
				alert = "error";
			} else if (message.equals("post_success")) {
				messageResponse = "Thành công! Thông tin đã được lưu vào hệ thống chờ xét duyệt";
			} else if (message.equals("request_success")) {
				messageResponse = "Gửi yêu cầu thành công";
				alert = "success";
			}
			request.setAttribute("message", messageResponse);
			request.setAttribute("alert", alert);
		}
	}
	public static String getMessageLogin(String message) {
		Map<String,String> mapMessage = new HashMap<>();
		mapMessage.put("username_password_invalid","Tên đăng nhập hoặc mật khẩu không đúng");
		mapMessage.put("login_success","Đăng nhập thành công");
		mapMessage.put("not_login","Chưa đăng nhập");
		mapMessage.put("not_permission","Không được phép");
		mapMessage.put("username_exist","Người dùng đã tồn tại");
		mapMessage.put("email_exist","Email đã tồn tại");
		mapMessage.put("phone_exist","Số điện thoại đã tồn tại");
		mapMessage.put("register_success","Đăng ký thành công");
		mapMessage.put("create_success","Tạo mới thành công");
		mapMessage.put("create_error","Lỗi hệ thống");
		mapMessage.put("delete_success","Xoá thành công");
		mapMessage.put("delete_error","Lỗi hệ thống");
		return mapMessage.get(message);
	}
}
