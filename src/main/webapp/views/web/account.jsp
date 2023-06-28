<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:url var="APIurl" value="/api-web-account"/>
<c:url var="NewURL" value="/tai-khoan"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="grid.css"> -->
    <title>Account</title>
</head>
<body>
<main class="main">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/account.css" /> ">
    <div class="header-user">MY ACCOUNT</div>
    <div class="grid wide main-content">
        <!-- Menu-user -->
        <div class="row">
            <div class="col l-4 m-12 c-12">
                <div class="sidebar-menu">
                    <div class="sidebar-top">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <div></div>
                            </div>
                            <div class="user-info">
                                <h1 class="user-info__name">${USERMODEL.name}</h1>
                                <div class="user-info__username">Tên đăng nhập: ${USERMODEL.username}</div>
                            </div>
                        </div>
                    </div>
                    <ul class="list-user">
                        <li class="list-user__item">
                            <a href="<c:url value="/trang-chu" /> ">
                                <span>Trang chủ</span>
                            </a>
                        </li>
                        <li class="list-user__item">
                            <a href="<c:url value="/khuyen-mai?type=danh-sach" />">
                                <span>Khuyến mại</span>
                            </a>
                        </li>
                        <li class="list-user__item">
                            <a href="<c:url value="/thoat?action=logout" />">
                                <span>Thoát</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col l-8 m-12 c-12">
                <form id = "formUser">
                    <div class="user-profile">
                        <div class="user-profile__welcome">
                            <div class="image">
                                <div></div>
                            </div>
                            <div class="text">
                                <div>Xin chào,</div>
                                <div>Bạn đã đăng nhập với tư cách: ${USERMODEL.name} <br></div>
                                <c:if test="${USERMODEL.roleId==1}">
                                    <div>Chào mừng, quản trị viên!</div>
                                </c:if>

                                <c:if test="${USERMODEL.roleId==2}">
                                    <c:if test="${USERMODEL.duedate!=null }">
                                        <div>Gói UserVip của bạn đã hết hạn từ ${USERMODEL.duedate}</div>
                                    </c:if>
                                    <c:if test="${USERMODEL.duedate==null}">
                                        <div>Bạn chưa đăng ký gói UserVip</div>
                                    </c:if>
                                </c:if>

                                <c:if test="${USERMODEL.roleId==3}">
                                    <c:if test="${USERMODEL.duedate!=null}">
                                        <div>Gói UserVip còn thời hạn đến ${USERMODEL.duedate}</div>
                                    </c:if>
                                </c:if>
                            </div>
                        </div>
                        <div class="user-change">
                            <label for=""><b>*</b>Email</label><br>
                            <input type="text" value="${USERMODEL.email}" name="email" id="email" class="account-newemail" >
                        </div>
                        <div class="user-change">
                            <label for=""><b>*</b>New password</label><br>
                            <input type="password" name="password" id="password" class="account-newpassword" >
                            <p>Mật khẩu tối thiểu 8 ký tự bao gồm chữ cái và số</p>
                        </div>
                        <div class="user-change">
                            <label for=""><b>*</b>Confirm password</label><br>
                            <input type="password" id="password-new" class="account-confirm" >
                        </div>
                        <div class="user-change">
                            <label for=""><b>*</b>Số điện thoại</label><br>
                            <input type="text" value="${USERMODEL.phone}" name="phone" id="phone" class="account-newphone" ><br>
                            <p>Điền chính xác số điện thoại</p>
                        </div>
                        <input type="hidden" value="${USERMODEL.id}" name="id">
                        <button type="submit" id="btnSubmit">LƯU THAY ĐỔI</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
<script src="<c:url value="/template/web/assets/js/account.js" /> "></script>
</body>
</html>