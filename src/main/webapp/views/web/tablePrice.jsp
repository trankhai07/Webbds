<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Document</title>
</head>
<body>
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/tablePrice.css" />">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/promotion.css" /> ">
<div class="grid wide tablePrice">
  <div class="row">
    <div class="col l-9 m-12 c-12">
      <div class="tablePrice__header">
        <div class="row table__navbar">
          <div class="col l-12 m-12 c-12">
            <h1 class="sections-title">
              <b></b>
              <span>BẢNG GIÁ XEM TIN BĐS CHÍNH CHỦ</span>
              <b></b>
            </h1>
          </div>
        </div>
        <div class="row">
          <div class="col l-5 m-5 c-12">
            <div class="tablePrice__container">
              <div class="tablePrice__container__topic">BẢNG GIÁ DỊCH VỤ XEM TIN</div>
              <div class="tablePrice__container__content">
                <ul class="tablePrice__list">
                  <h1 class="tablePrice__list_topic">
                    300K/ THÁNG
                  </h1>
                  <li class="tablePrice__item">
                    LH 0562138187 Mua gói dịch vụ để hiển thị Liên Hệ Chủ Nhà
                  </li>
                  <li class="tablePrice__item">
                    Mua 1 tháng: 300k
                  </li>
                  <li class="tablePrice__item">
                    Mua 3 tháng: 900k - Tặng 1 tháng
                  </li>
                  <li class="tablePrice__item">
                    Mua 6 tháng: 1800k - Tặng 2 tháng
                  </li>
                  <li class="tablePrice__item">
                    Mua 1 năm: 3600k - Tặng 4 tháng
                  </li>
                  <div></div>
                </ul>
              </div>
            </div>
          </div>
          <div class="col l-7 m-7 c-12">
            <div class="tablePrice__container">
              <div class="tablePrice__container__topic">HƯỚNG DẪN MUA GÓI DỊCH VỤ</div>
              <div class="tablePrice__container__content">
                <ul class="tablePrice__list">
                  <h1 class="tablePrice__list_topic">
                    CHUYỂN KHOẢN
                  </h1>
                  <li class="tablePrice__item">
                    VP Bank: 0026A710021 - Trần Đình Khải
                  </li>
                  <li class="tablePrice__item">
                    Vietcombank: 1034345904 - Nguyễn Anh Quốc
                  </li>
                  <li class="tablePrice__item">
                    MB Bank: 0353621271 - Ngô Đức Phương
                  </li>
                  <li class="tablePrice__item">
                    NỘI DUNG: (Khu vực) (Email) (Số đt)
                  </li>
                  <li class="tablePrice__item">
                    VD: HN( hoặc HCM) abcgmail.com( bỏ @) 0839100210
                  </li>
                  <div></div>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col l-3 m-12 c-12">
      <%@include file="/common/web/sidebarSearchR.jsp" %>
    </div>
  </div>
</div>
</body>
</html>