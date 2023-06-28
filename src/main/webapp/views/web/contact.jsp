<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <link rel="stylesheet" href="/template/web/assets/css/home.css"> -->
  <title>Document</title>
</head>
<body>
  <link rel="stylesheet" href="<c:url value="/template/web/assets/css/contact.css" /> ">
  <link rel="stylesheet" href="<c:url value="/template/web/assets/css/tablePrice.css" /> ">
  <link rel="stylesheet" href="<c:url value="/template/web/assets/flag/intlTelInput.css" /> ">
  <script src = "<c:url value="/template/web/assets/js/intlTelInput.js" /> "></script>
  <div class="grid wide contact">
    <div class="row sections">
      <div class="col l-12 c-12 m-12">
        <h1 class="sections-title">
          <b></b>
          <span>HỖ TRỢ 24/7 - BẤT ĐỘNG SẢN CHÍNH CHỦ</span>
          <b></b>
        </h1>
      </div>
    </div>
    <div class="row">
      <div class="col l-6 m-6 c-12">
        <div class="topic-contact">
          GOOGLE MAP
        </div>
        <div class="google-map">
          <p>Bạn có thể nhấn chỉ đường để đến trụ sở chính của chúng tôi</p>
          <div style="background-image: url('<c:url value="/template/web/assets/img/map.png" /> ')" class="google-map__picmap" id = "map">

          </div>
          <div class="contact-icon">
            <a href="https://www.facebook.com/quocnguyenanh187/"><i class="icon-item icon-face fa-brands fa-facebook"></i></a>
            <a href="mailto:nguyenanhquoc187@gmail.com">
              <div class="contact-icon__mail">
                <i class="icon-item fa-solid fa-envelope"></i>
              </div>
            </a>
            <a href="tel:0562138187">
              <div class="contact-icon__call">
                <i class="icon-item fa-solid fa-phone"></i>
              </div>
            </a>
          </div>
        </div>
      </div>
      <div class="col l-6 m-6 c-12">
        <div class="topic-contact">
          LIÊN HỆ VỚI CHÚNG TÔI
        </div>
        <form action="/api-web-contact" class = "form-contact" method="post">
          <div class="contact-input">
            <label for="">Họ và tên<b> *</b></label>
            <br>
            <input required type="text" name ="name" id = "name" >
          </div>
          <div class="contact-input">
            <label for="">Email<b> *</b></label>
            <br>
            <input required type="text" name = "email" id = "email">
          </div>
          <div class="contact-input">
            <label for="">Phone<b> *</b></label>
            <br>
            <input required type="text" name = "phone" id = "phone" class = "contact-phone">
          </div>
          <div class="contact-input">
            <label for="">Nội dung yêu cầu</label>
            <br>
            <textarea required name="request" id="content-request" rows="6"></textarea>
          </div>
          <button type="submit">Gửi yêu cầu</button>
        </form>
      </div>
    </div>
  </div>
  <script>
    var input = document.querySelector("#phone");
    var iti = window.intlTelInput(input, {
      preferredCountries: ["vn", "us", "gb"], // Các quốc gia ưu tiên hiển thị
      separateDialCode: true, // Hiển thị mã quốc gia cách riêng
      utilsScript: "./assets/js/utils.js" // Đường dẫn đến utils.js
    });
  </script>
  <!-- <script src="./assets/js/backhome.js"></script>
  <script src="./assets/js/clickmenu.js"></script> -->
<%--  <script>--%>
<%--    function initMap() {--%>
<%--      var map = new google.maps.Map(document.getElementById('map'), {--%>
<%--        center: {lat: 10.762622, lng: 106.660172},--%>
<%--        zoom: 12--%>
<%--      });--%>
<%--    }--%>

<%--    // Gọi hàm initMap() khi trang HTML được tải--%>
<%--    window.onload = initMap;--%>
<%--  </script>--%>

</body>
</html>