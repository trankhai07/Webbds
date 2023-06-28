<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<footer class="footer-wrapper" >
  <section class="section section_p7">
    <div class="section-img-banner fill" >
    </div>
    <div class="section-content relative section_p7__center">
      <div class="grid wide section_p7__grid" style="padding-bottom: 90px;">
        <div class="row ">
          <div class="col l-12 c-12 c-12-padding20 m-12">
            <div style="margin-top: 40px" class="footer-logo">
              <img style="border: 1px solid #ccc;" src="<c:url value="/template/web/assets/img/logo_3.jpg"/> " alt="">
            </div>

          </div>
        </div>

        <div class="row footer-content">
          <div class="col l-8 m-8">
            <div class="row">
              <div class="col l-6 c-12 c-12-padding20 m-6 m-6-padding10">
                <div class="footer-inforpage">
                  <h3>Trụ sở chính</h3>
                  <p>Học viện công nghệ bưu chính viễn thông</p>
                </div>
              </div>
              <div class="col l-6 c-12 c-12-padding20 m-6 m-6-padding10">
                <div class="footer-contact">
                  <h3>Hotline</h3>
                  <p>0562138187 (Call/Zalo)</p>
                </div>
              </div>
            </div>

            <div class="row ">
              <div class="col l-6 c-12 c-12-padding20 m-6 m-6-padding10">
                <div class="footer-inforpage footer-inforpageP2">
                  <h3>THÔNG TIN CÔNG TY</h3>
                  <p>muabanbds.live là trang tin cung cấp nguồn nhà bán và cho thuê chính chủ tại Hà Nội và TPHCM</p>
                  <p id="footer-inforpage--1">Thông tin chính chủ 99%, có đủ địa chỉ và số điện thoại chủ nhà</p>
                </div>
              </div>
              <div class="col l-6 c-12 c-12-padding20 m-6 m-6-padding10">
                <div class="footer-contact">
                  <h3 id="footer-contact--1">EMAIL</h3>
                  <p>Support@muabanbds.live</p>
                  <c:if test="${empty USERMODEL}"  >
                    <a href="<c:url value="/dang-ky?action=sign_up"/>" class="button-search button-padding">ĐĂNG KÝ THÀNH VIÊN</a>
                    <a href="<c:url value="/dang-nhap?action=login"/>" class="button-search button-padding">ĐĂNG NHẬP THÀNH VIÊN</a>
                  </c:if>
                  <c:if test="${not empty USERMODEL}"  >
                    <a href="<c:url value="/tai-khoan"/>" class="button-search button-padding">ĐĂNG KÝ THÀNH VIÊN</a>
                    <a href="<c:url value="/tai-khoan"/>" class="button-search button-padding">ĐĂNG NHẬP THÀNH VIÊN</a>
                  </c:if>
                </div>
              </div>
            </div>
          </div>
          <!-- wait -->
          <div class="col l-4  c-12 m-4 ">
            <div class="tablePrice__container tablePrice__containers">
              <div class="tablePrice__container__topic">BẢNG GIÁ DỊCH VỤ XEM TIN</div>
              <div class="tablePrice__container__content">
                <ul class="tablePrice__list tablePrice__lists">
                  <h1 class="tablePrice__list_topic">
                    300K/ THÁNG
                  </h1>
                  <li class="tablePrice__item tablePrice__items">
                    Mua 1 tháng: 300k
                  </li>
                  <li class="tablePrice__item tablePrice__items">
                    Mua 3 tháng: 900k - Tặng 1 tháng
                  </li>
                  <li class="tablePrice__item tablePrice__items">
                    Mua 6 tháng: 1800k - Tặng 2 tháng
                  </li>
                  <li class="tablePrice__item tablePrice__items">
                    Mua 1 năm: 3600k - Tặng 4 tháng
                  </li>
                  <div></div>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="footer-back" >
    <div class="footer-back--1" id="backToTop">
      <a href="#" class="back-to-top">
        <i class="fa-solid fa-angle-up"></i>
      </a>
    </div>
    <div class="grid wide footer-back--2">
      <div class="back-2--1">
        <p>Copyright 2023 © https://muabannds.live/</p>
      </div>
      <div class="back-2--2">
        <p><span>Đơn vị chủ quản: </span>Công ty TNHH 6 thành viên PTIT</p>
      </div>
    </div>

  </div>
</footer>