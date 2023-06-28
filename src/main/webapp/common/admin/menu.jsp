<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<div class="sidebar-menu">
    <div class="sidebar-top">
        <div class="user-profile">
            <div class="user-avatar"></div>
            <div class="user-info">
                <c:if test="${empty USERMODEL}">
                    <h1 class="user-info__name">
                        Chưa đăng nhập
                    </h1>
                    <div class="user-info__active">
                        <div class="icon-color" style="background-color:#da5454  "></div>
                        <div class="active-name">OFFLINE</div>
                    </div>
                </c:if>
                <c:if test="${not empty USERMODEL}">
                    <h1 class="user-info__name">
                            ${USERMODEL.name}
                    </h1>
                    <div class="user-info__active">
                        <div class="icon-color" style="background-color: #8ad919"></div>
                        <div class="active-name">ONLINE</div>
                    </div>
                </c:if>
            </div>
        </div>
        <c:if test="${not empty USERMODEL}">
            <div class="user-exit">
                <a href="<c:url value="/thoat?action=logout"/>">
                    <i class="ace-icon fa fa-power-off"></i>
                    <span>Log out</span>
                </a>
            </div>
        </c:if>
    </div>
    <ul class="menu-list">
        <li class="menu-item">
            <a href="" class="menu-item_child">
                <i class="fa-solid fa-user"></i>
                Quản lý người dùng
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <ul class="list-user">
            <li class="list-user__item">
                <a href="<c:url value="admin-user?type=list" />">
                    <span>Danh sách người dùng</span>
                </a>
            </li>
        </ul>
        <li class="menu-item">
            <a href="" class="menu-item_child">
                <i class="fa fa-list-alt"></i>
                Quản lý bài đăng
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <ul class="list-user">
            <li class="list-user__item">
                <a href="<c:url value = '/admin-post?type=list'/>">
                    <span>Danh sách bài đăng</span>
                </a>
            </li>
            <li class="list-user__item">
                <a href="<c:url value = '/admin-browse?type=browse'/>">
                    <span>Duyệt các bài đăng</span>
                </a>
            </li>
        </ul>

        <li class="menu-item">
            <a href="" class="menu-item_child">
                <i class="fa fa-list-alt"></i>
                Quản lý khuyến mại
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <ul class="list-user">
            <li class="list-user__item">
                <a href="<c:url value='/admin-promo?type=list'/>">
                    <span>Danh sách khuyến mại</span>
                </a>
            </li>
        </ul>

        <li class="menu-item">
            <a href="" class="menu-item_child">
                <i class="fa fa-list-alt"></i>
                Quản lý yêu cầu
                <b class="arrow fa fa-angle-down"></b>
            </a>
        </li>
        <ul class="list-user">
            <li class="list-user__item">
                <a href="<c:url value='/admin-contact?type=list'/>">
                    <span>Danh sách yêu cầu</span>
                </a>
            </li>
        </ul>
    </ul>
</div>
<div class="modal-hide">
    <div class="sidebar-menu sidebar-menu-modal">
        <div class="sidebar-top">
            <div class="user-profile">
                <div class="user-avatar"></div>
                <div class="user-info">
                    <c:if test="${empty USERMODEL}">
                        <h1 class="user-info__name">
                            Chưa đăng nhập
                        </h1>
                        <div class="user-info__active">
                            <div class="icon-color" style="background-color:#da5454  "></div>
                            <div class="active-name">OFFLINE</div>
                        </div>
                    </c:if>
                    <c:if test="${not empty USERMODEL}">
                        <h1 class="user-info__name">
                                ${USERMODEL.name}
                        </h1>
                        <div class="user-info__active">
                            <div class="icon-color" style="background-color: #8ad919"></div>
                            <div class="active-name">ONLINE</div>
                        </div>
                    </c:if>
                </div>
            </div>
            <c:if test="${not empty USERMODEL}">
                <div class="user-exit">
                    <a href="<c:url value="/thoat?action=logout"/>">
                        <i class="ace-icon fa fa-power-off"></i>
                        <span>Log out</span>
                    </a>
                </div>
            </c:if>

        </div>
        <ul class="menu-list">
            <li class="menu-item">
                <a href="" class="menu-item_child">
                    <i class="fa-solid fa-user"></i>
                    Quản lý người dùng
                    <b class="arrow fa fa-angle-down"></b>
                </a>
            </li>
            <ul class="list-user">
                <li class="list-user__item">
                    <a href="<c:url value="admin-user?type=list" />">
                        <span>Danh sách người dùng</span>
                    </a>
                </li>
            </ul>
            <li class="menu-item">
                <a href="" class="menu-item_child">
                    <i class="fa fa-list-alt"></i>
                    Quản lý bài đăng
                    <b class="arrow fa fa-angle-down"></b>
                </a>
            </li>
            <ul class="list-user">
                <li class="list-user__item">
                    <a href="<c:url value = '/admin-post?type=list'/>">
                        <span>Danh sách bài đăng</span>
                    </a>
                </li>
                <li class="list-user__item">
                    <a href="<c:url value = '/admin-browse?type=browse'/>">
                        <span>Duyệt các bài đăng</span>
                    </a>
                </li>
            </ul>

            <li class="menu-item">
                <a href="" class="menu-item_child">
                    <i class="fa fa-list-alt"></i>
                    Quản lý khuyến mại
                    <b class="arrow fa fa-angle-down"></b>
                </a>
            </li>
            <ul class="list-user">
                <li class="list-user__item">
                    <a href="<c:url value='/admin-promo?type=list'/>">
                        <span>Danh sách khuyến mại</span>
                    </a>
                </li>
            </ul>

            <li class="menu-item">
                <a href="" class="menu-item_child">
                    <i class="fa fa-list-alt"></i>
                    Quản lý yêu cầu
                    <b class="arrow fa fa-angle-down"></b>
                </a>
            </li>
            <ul class="list-user">
                <li class="list-user__item">
                    <a href="<c:url value='/admin-contact?type=list'/>">
                        <span>Danh sách yêu cầu</span>
                    </a>
                </li>
            </ul>
        </ul>
    </div>
    <div class="modal-right">
    </div>
</div>