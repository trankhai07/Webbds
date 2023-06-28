<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<!-- Header -->
<div class="header">

  <div class="grid wide">
    <!-- mobile and tablet -->
    <div class="row-mobile">
      <div class="mobile-bar">
        <button class="mobile-menu-btn " id="js-menu-bar">
          <i class="fa-solid fa-bars"></i>
        </button>
      </div>

      <div class="mobile-logo">
        <a href="<c:url value="/trang-chu"/>" class="">
          <img class="" src="<c:url value="/template/web/assets/img/logo_3.jpg" />" alt="">
        </a>
      </div>
      <div class="mobbile-icon-search header-wrapper__listitem--search">
        <a href="#" class="header-itemlink--icon header-itemlink--search">
          <i class="header-link--search fa-solid fa-magnifying-glass"></i>
        </a>
        <div class="header-wrapper__listitem--find">
          <input type="text" class="header-input" placeholder="Bạn cần tìm gì ?...">
          <a href="#" class="header-icon--search"><i class="header-linkinput--search fa-solid fa-magnifying-glass"></i>
          </a>
          <p class="space_2"></p>
        </div>
      </div>
    </div>
    <!-- PC  -->
    <div class="modal">
      <button class="mobile-close" id="js-button-close">
        <i class="fa-sharp fa-solid fa-xmark"></i>
      </button>
      <div class="header-wrapper js-modal-header__wrapper ">
        <!-- Header-wrapper--left(logo) -->
        <div class="header-wrapper--logo">
          <a href="/trang-chu" class="">
            <img class="logo__icon to-hiden" src="<c:url value="/template/web/assets/img/logo_3.jpg" />" alt="">
          </a>
        </div>
        <!-- Header-wrapper--right(select) -->
        <div class="header-wrapper--item">
          <ul class="header-wrapper__list">
            <li class="header-wrapper__list--item header-wrapper__list--price">
              <a href="tel:+84562138187" class="button-search mobile-search get-price to-hide" >NHẬN BÁO GIÁ</a>
            </li>
            <li class="header-wrapper__list--item header-wrapper__listitem--home">
              <a href="<c:url value="/trang-chu"/>" class="header-item--link">HOME</a>
            </li>
            <li class="header-wrapper__list--item">

              <a href="<c:url value="/find-post?type=1&title1=&postType1=&province1=Hà+Nội&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=&pagefrom=HÀ+NỘI"/> " class="header-item--link">BĐS HN</a>

            </li>
            <li class="header-wrapper__list--item">
              <a href="<c:url value="/find-post?type=1&title1=&postType1=&province1=TPHCM&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=&pagefrom=TPHCM" /> " class="header-item--link">BĐS HCM</a>
            </li>
            <li class="header-wrapper__list--item">
              <a href="<c:url value="/bang-gia" /> " class="header-item--link">BẢNG GIÁ</a>
            </li>
            <li class="header-wrapper__list--item">
              <a href="<c:url value="/khuyen-mai?type=danh-sach" />" class="header-item--link">KHUYẾN MẠI</a>
            </li>

            <li class="header-wrapper__list--item">
              <a href="<c:url value="/lien-he" /> " class="header-item--link">LIÊN HỆ</a>
            </li>
            <c:if test="${empty USERMODEL}">
              <li class="header-wrapper__list--item">
                <a href="<c:url value="/dang-nhap?action=login"/>" class="header-item--link header-item__link--log ">ĐĂNG NHẬP</a>
              </li>
              <li class="header-wrapper__list--item">
                <a href="<c:url value="/dang-ky?action=sign_up"/>" class="header-item--link header-item__link--log">ĐĂNG KÝ</a>
              </li>
            </c:if>

            <c:if test="${not empty USERMODEL}">
              <li class="header-wrapper__list--item">
                <a href="<c:url value="/tai-khoan"/>" class="header-item--link header-item__link--log">Xin chào, ${USERMODEL.name}</a>
              </li>
              <li class="header-wrapper__list--item">
                <a href="<c:url value="/thoat?action=logout"/>" class="header-item--link header-item__link--log">Thoát</a>
              </li>
            </c:if>

            <li class="header-wrapper__list--item header-wrapper__list--mobilesubmit">
              <a href="<c:url value="/new-post"/>" class="header-item--link header-item__link--submit">ĐĂNG TIN</a>
            </li>

            <li class="header-wrapper__item--separate to-hiden"></li>

            <li class="header-wrapper__list--item to-hiden">
              <a href="tel:+84562138187" class="header-item__link--icon">
                <i class="header-link--phone fa-solid fa-phone"></i>
              </a>
            </li>

            <li class="header-wrapper__item--separate to-hiden"></li>

            <li class="header-wrapper__list--item header-wrapper__listitem--option to-hiden">

              <div class="header-wrapper__listitem--search">
                <a href="#" class="header-itemlink--icon header-itemlink--search">
                  <i class="header-link--search fa-solid fa-magnifying-glass"></i>
                </a>
                <div class="header-wrapper__listitem--find">
                  <input type="text" class="header-input" placeholder="Bạn cần tìm gì ?..." id="search-input">
                  <div onclick="search()" class="header-icon--search" > <i class="header-linkinput--search fa-solid fa-magnifying-glass"></i>
                  </div>
                  <p class="space_2"></p>
                </div>
              </div>

            </li>

          </ul>
        </div>
      </div>
    </div>

  </div>
</div>