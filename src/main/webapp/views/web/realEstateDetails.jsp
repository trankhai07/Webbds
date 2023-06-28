<%@ page import="live.muabanbds.model.PostModel" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/hanoirealstate.css" /> ">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/realEstateDetails.css" /> ">
<div class="banner-detail" style="margin-top: 70px">
  <p class="banner-detail__content">
    TRANG CHỦ
  </p>
  <b>/</b>
  <p class="banner-detail__content">
    BĐS ${detail_post.getSumarryAddress()}
  </p>
</div>
<%
  PostModel obj = (PostModel) request.getAttribute("detail_post");
  pageContext.setAttribute("p", obj);
%>
<div class="grid wide real-estate">
  <div class="row">
    <div class="col l-3 m-4 c-0 sidebarfake" style="margin-bottom: 10px;">
      <div class="row contentfake_search" id="contentfake_search1">
        <div class="col l-12 c-12 modalfake_contentfake_search_items">
          <h1>TÌM KIẾM NHANH</h1>
          <hr class="search_items_line" style="width:20%; float: left;border: 2px solid #ccc;"/>
          <form action="/find-post" class="contentfake_search_form">
            <input type="hidden" name="type" value="1">
            <input type="hidden" name="pagefrom" value="TÌM KIẾM">
            <input type="text" id="fname" name="title1" placeholder="Nhập tìm kiếm"
                   class="newfake">
            <select id="newfakes1" name="postType1" class="newfake">
              <option value="">Loại tin</option>
              <option value="bán BĐS">BĐS bán</option>
              <option value="cho thuê BĐS">BĐS cho thuê</option>
            </select>
            <select id="select-city" name="province1" class="newfake">
              <option class="type__option type__option-start" value="">Tỉnh/Thành Phố</option>
              <option class="type__option" value="Hà Nội">Hà Nội</option>
              <option class="type__option" value="TPHCM">TPHCM</option>
            </select>
            <select id="select-district" name="district1" class="newfake">
              <option class="type__option type__option-start" value="">Chọn quận</option>
            </select>
            <select id="newfakes4" name="estateType1" class="newfake">
              <option class="type__option type__option-start" value="">Loại BĐS</option>
              <option class="type__option type__option-start" value="Nhà đất">Nhà đất</option>
              <option class="type__option type__option-start" value="Chung cư">Chung cư</option>
              <option class="type__option type__option-start" value="Đất thổ cư">Đất thổ cư
              </option>
              <option class="type__option type__option-start" value="Văn phòng">Văn phòng</option>
              <option class="type__option type__option-start" value="Loại BĐS">Loại BĐS</option>
              <option class="type__option type__option-start" value="BĐS khác">BĐS khác</option>
            </select>
            <div class="column-content column-content__area">
              <input type="text" class="input input__area" placeholder="Diện tích">
              <div class="area__noti">
                <input type="number" name="minArea1" class="input area__noti--start"
                       placeholder="Từ m2">
                <input type="number" name="maxArea1" class="input area__noti--end"
                       placeholder="Đến m2">
              </div>
            </div>
            <select id="newfakes6" name="priceRange1" class="newfake">
              <option class="type__option type__option-start" value="Khoảng giá">Khoảng giá
              </option>
              <option class="type__option type__option-start" value="Thỏa thuận">Thỏa thuận
              </option>
              <option class="type__option type__option-start" value="Dưới 3 triệu">Dưới 3 triệu
              </option>
              <option class="type__option type__option-start" value="3 - 5 triệu">3 - 5 triệu
              </option>
              <option class="type__option type__option-start" value="5 - 10 triệu">5 - 10 triệu
              </option>
              <option class="type__option type__option-start" value="10 - 15 triệu">10 - 15
                triệu
              </option>
              <option class="type__option type__option-start" value="15 – 20 triệu">15 – 20 triệu</option>
              <option class="type__option type__option-start" value="20 – 30 triệu">20 – 30 triệu</option>
              <option class="type__option type__option-start" value="30 – 40 triệu">30 – 40 triệu</option>
              <option class="type__option type__option-start" value="40 – 60 triệu">40 – 60 triệu</option>
              <option class="type__option type__option-start" value="60 – 80 triệu">60 – 80 triệu</option>
              <option class="type__option type__option-start" value="80 – 100 triệu">80 – 100 triệu</option>
              <option class="type__option type__option-start" value="100 – 300 triệu">100 – 300 triệu</option>
              <option class="type__option type__option-start" value="300 – 500 triệu">300 – 500 triệu</option>
              <option class="type__option type__option-start" value="500 – 700 triệu">500 – 700 triệu</option>
              <option class="type__option type__option-start" value="700 – 1 tỷ">700 – 1 tỷ</option>
              <option class="type__option type__option-start" value="1 – 2 tỷ">1 – 2 tỷ</option>
              <option class="type__option type__option-start" value="2 – 3 tỷ">2 – 3 tỷ</option>
              <option class="type__option type__option-start" value="3 – 4 tỷ">3 – 4 tỷ</option>
              <option class="type__option type__option-start" value="4 – 6 tỷ">4 – 6 tỷ</option>
              <option class="type__option type__option-start" value="6 – 8 tỷ">6 – 8 tỷ</option>
            </select>

            <input type="submit" value="Tìm kiếm" class="inputfake">
          </form>

        </div>
      </div>
      <br/>
      <div class="row contentfake_category" id="contentfake_category1">
        <div class="col l-12 c-12 contentfake_category_items">
          <h1>DANH MỤC</h1>
          <hr class="category_items_line"
              style="width:20%; float: left;border: 2px solid #ccc;"/>
          <a class="category_item_line_link"
             href="find-post?type=1&pagefrom=BĐS+CHO+THUÊ&title1=&postType1=cho+thuê+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
            cho thuê</a>
          <hr class="category_items_line"/>
          <a class="category_item_line_link"
             href="find-post?type=1&pagefrom=BĐS+HÀ+NỘI&title1=&postType1=&province1=Hà+Nội&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
            Hà Nội</a>
          <hr class="category_items_line"/>
          <a class="category_item_line_link"
             href="find-post?type=1&pagefrom=BĐS+MUA+BÁN&title1=&postType1=bán+BĐS&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
            Mua Bán</a>
          <hr class="category_items_line"/>
          <a class="category_item_line_link"
             href="find-post?type=1&postform1=nb&pagefrom=BĐS+NỔI+BẬT&title1=&postType1=&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
            Nổi bật</a>
          <hr class="category_items_line"/>
          <a class="category_item_line_link"
             href="find-post?type=1&pagefrom=BĐS+TPHCM&title1=&postType1=&province1=TPHCM&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=">BĐS
            TP.HCM</a>
          <hr class="category_items_line"/>
        </div>
      </div>
    </div>
    <div class="col l-9 m-8 c-12">
      <div class="house-detail">
        <div class="row">
          <div class="col l-7 m-7 c-12">
            <div class="house-picture">
              <button  class="click-zoom" id = "click-zoom">
                Zoom
              </button>
            </div>
            <div class="discrip-button">
              <button id = "mota">Mô tả</button>
            </div>
          </div>
          <div class="col l-5 m-5 c-12">
            <div class="house-information">
              <div class="info-topic">
                <span>${p.getTitle()}</span>
              </div>
              <div class="info-block">
                <div class="block-distance"></div>
              </div>
              <div class="info-detail">
                <ul class="info-house-list">
                  <li class="house-list__topic">
                    <c:if test="${p.getPrice()>=1000}">
                      ${p.getPrice()/1000} tỷ
                    </c:if>
                    <c:if test="${p.getPrice()<1000}">
                      ${p.getPrice()} triệu
                    </c:if>
                  </li>
                  <li class="house-list__item">
                    <i class="fa-solid fa-chart-area"></i>
                    <span> ${p.getArea()}m<sup>2</sup></span>
                  </li>
                  <li class="house-list__item">
                    <i class="fa-solid fa-city"></i>
                    <span>Tỉnh/ Thành phố :  ${p.getSumarryAddress()}</span>
                  </li>
                  <li class="house-list__item">
                    <i class="fa-solid fa-calendar-days"></i>
                    <span>Ngày đăng:  ${p.getDate()}</span>
                  </li>
                  <li class="house-list__item">
                    <i class="fa-solid fa-location-dot"></i>
                    <span>Quận/Huyện: ${p.getDistrict()}</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col l-12 m-12 c-12">
            <div class="house-description">
              <h1 class="house-description__topic" id = "interview">
                THÔNG TIN BĐS CHÍNH CHỦ:
              </h1>
              <ul class="list-description">
                <li class="item-descrip">Diện tích: ${p.getArea()}m<sup>2</sup></li>
<%--                <li class="item-descrip">--%>
<%--                  Nhà đẹp y hình 1 lầu 2pn 2wc,nhà có sân rộng 20m2,có ban công thoáng mát…--%>
<%--                  Vị trí đẹp hẻm trước nhà 3m,cách mặt tiền 70m,hẻm sạch sẽ an ninh,đi bộ vài bước ra chợ sáng Bùi Min Trực.Tiện ích xung quanh đầy đủ ko thiếu gì…--%>
<%--                </li>--%>
                <li class="item-descrip">Giá:
                  <c:if test="${p.getPrice()>=1000}">
                  ${p.getPrice()/1000} tỷ
                </c:if>
                  <c:if test="${p.getPrice()<1000}">
                    ${p.getPrice()} triệu
                  </c:if>
                </li>
                <li class="item-descrip">
                  Số tầng: &nbsp;${p.getFloor()}
                </li>
                <li class="item-descrip">
                  Số phòng ngủ: &nbsp;${p.getBedroom()}
                </li>
                <li class="item-descrip">
                  Số nhà vệ sinh: &nbsp;${p.getWc()}
                </li>
                <li class="item-descrip">
                  Hướng: &nbsp;${p.getDirect()}
                </li>
                <li class="item-descrip">
                  Nội thất: &nbsp;${p.getInterior()}
                </li>
              </ul>
              <h1 class="house-description__topic">
                LIÊN HỆ CHỦ NHÀ:
                <c:if test="${USERMODEL.roleId==null}">
                  (Đăng nhập để xem tin)
                </c:if>

                <c:if test="${USERMODEL.roleId==2}">
                  (Mua gói phù hợp để xem tin)
                </c:if>

                <c:if test="${USERMODEL.roleId==3 or USERMODEL.roleId==1}">
                <ul class="list-description" style="font-weight: normal;font-size: 16px;">
                  <li class="item-descrip">
                    Địa chỉ người bán: &nbsp;${p.getAddress()}
                  </li>
                  <li class="item-descrip">
                    Số điện thoại người bán: &nbsp;${p.getPhone()}
                  </li>
                </ul>
                </c:if>
              </h1>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="modal11" id = "modal11">
  <div class="modal11__overlay">

  </div>
  <div class="modal11__body">

  </div>
  <div class="modal11__exit" id = "modal11__exit">
    <i class="fa-solid fa-x"></i>
  </div>
</div>
<script>
  const btnImage = document.querySelector(".modal11__body");
  const clickExit = document.querySelector(".modal11__overlay");
  clickExit.addEventListener('click', function () {
    modal11.style.display = 'none';
  })
  btnImage.addEventListener('click', function (e) {
    e.stopPropagation();


  })
  const btnZoom = document.getElementById("click-zoom");
  const modal11 = document.getElementById("modal11");
  btnZoom.addEventListener("click", function() {
    modal11.style.display = 'flex';
  })
  const btnExit = document.getElementById("modal11__exit");
  btnExit.addEventListener("click", function() {
    modal11.style.display = 'none';
  })

  // Sử dụng ví dụ:
  var button = document.getElementById("mota");
  button.addEventListener("click", function() {
    var targetElement = document.getElementById("interview");
    // targetElement.scrollIntoView();
    var targetPosition = targetElement.offsetTop;
    var currentPosition = window.scrollY;
    var distance = targetPosition - currentPosition - 70;
    var duration = 300; // Thời gian di chuyển (0.3 giây)

    var start = null;
    window.requestAnimationFrame(step);

    function step(timestamp) {
      if (!start) start = timestamp;
      var progress = timestamp - start;
      var percentage = Math.min(progress / duration, 1);
      window.scrollTo(0, currentPosition + distance * percentage);

      if (progress < duration) {
        window.requestAnimationFrame(step);
      }
    }
  });
</script>
</body>
</html>