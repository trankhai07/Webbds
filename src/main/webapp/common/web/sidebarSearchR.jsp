<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<div class="sidebar">
    <div class="sidebar-search">
        <form action="/find-post" class="sidebar-search__form">
            <label class="sidebar-search__label" for="sidebar-search__input">Tìm kiếm</label>
            <input type="sidebar-search" name="title1" class="sidebar-search__input" placeholder="Tìm kiếm sản phẩm . . .">
            <input type="hidden" name="type" value="1">
            <input type="hidden" name="pagefrom" value="TÌM KIẾM">
            <input hidden name="postType1" value="">
            <input hidden name="province1" value="">
            <input hidden name="district1" value="">
            <input hidden name="estateType1" value="">
            <input hidden name="minArea1" value="">
            <input hidden name="maxArea1" value="">
            <input hidden name="priceRange1" value="">
            <button type="submit" class="sidebar-search__btn">
                <svg aria-hidden="true" role="img" focusable="false" class="dashicon dashicons-arrow-right-alt2" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20">
                    <path d="M6 15l5-5-5-5 1-2 7 7-7 7z"></path>
                </svg>
            </button>
        </form>
    </div>

    <div class="price">
        <div class="price__title">BẢNG GIÁ XEM TIN</div>
        <p class="price__item">MUA 1 THÁNG – 300K</p>
        <p class="price__item">3 THÁNG TẶNG 1 THÁNG</p>
        <p class="price__item">6 THÁNG TẶNG 2 THÁNG</p>
        <p class="price__item">1 NĂM TẶNG 4 THÁNG</p>
    </div>

    <div class="products-new">
        <div class="products-new__title">DỰ ÁN NỔI BẬT</div>
        <ul class="products-new__list">
            <c:forEach items="${POST}" var="item" >
                <li class="products-new__list-item">
                    <a href="/post?id=${item.id}" class="products-new__list-item__link">
                        <img src="<c:url value="/template/web/assets/img/dieu-kien-kinh-doanh-bat-dong-san-100x100.webp" />" alt="">
                        <span>${item.title}</span>
                    </a>
                </li>
            </c:forEach>

        </ul>
    </div>
</div>