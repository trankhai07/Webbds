<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 5/31/2023
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>admin</title>
</head>
<body>
<div class="main-content__inner">
    <div class="grid">
        <div class="main-content-topic">
            <ul class="topic-list">
                <li class="section-main">
                    <i class="fa fa-home home-icon"></i>
                    <span>Trang chủ</span>
                </li>
            </ul>
        </div>
        <div class="box-stat">
            <div class="row">
                <div class="col c-12 l-6 m-6">
                    <div style="background-color:#321fdb;" class="box-stat-item">
                        <div class="row">
                            <div class="col l-6 m-6 c-6">
                                <h1 class="box-stat-item-title">UserVip</h1>
                                <h2 class="box-stat-item-quantity">${totalUserVip}</h2>
                            </div>
                            <div class="col l-6 m-6 c-6">
                                <i class="box-stat-item-icon fa-solid fa-chart-column"></i>
                            </div>
                        </div>

                    </div>
                    <div style="background-color:#3399ff;" class="box-stat-item">
                        <div class="row">
                            <div class="col l-6 m-6 c-6">
                                <h1 class="box-stat-item-title">Liên hệ trong ngày</h1>
                                <h2 class="box-stat-item-quantity">${totalContact}</h2>
                            </div>
                            <div class="col l-6 m-6 c-6">
                                <i class="box-stat-item-icon fa-solid fa-chart-pie"></i>
                            </div>
                        </div>

                    </div>

                </div>
                <div class="col c-12 l-6 m-6">
                    <div style="background-color:#e55352;" class="box-stat-item">
                        <div class="row">
                            <div class="col l-6 m-6 c-6">
                                <h1 class="box-stat-item-title">Bài đăng cần duyệt</h1>
                                <h2 class="box-stat-item-quantity">${totalPostPending}</h2>
                            </div>
                            <div class="col l-6 m-6 c-6">
                                <i class="box-stat-item-icon fa-solid fa-arrow-trend-up"></i>
                            </div>
                        </div>

                    </div>
                    <div style="background-color:#f9b116;" class="box-stat-item">
                        <div class="row">
                            <div class="col l-6 m-6 c-6">
                                <h1 class="box-stat-item-title">Bài đăng trong tháng
                                </h1>
                                <h2 class="box-stat-item-quantity">${totalPostInMonth}</h2>
                            </div>
                            <div class="col l-6 m-6 c-6">
                                <i class="box-stat-item-icon fa-solid fa-chart-simple"></i>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>
