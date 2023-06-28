<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/30/2023
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<c:url value="/template/web/assets/img/logo_3.jpg"/>" type="image/jpg" sizes="16x16">
    <link rel="stylesheet" href=" <c:url value="/template/admin/fonts/fontawesome-free-6.2.1-web/css/all.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/main.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/grid.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/header.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/menu.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/base.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/admin/css/edit.css" /> ">
    <title>Admin</title>
</head>
<body>
    <%--    header--%>
    <%@include file="/common/admin/header.jsp" %>
    <div class="main-content">
<%--        menu--%>
        <%@include file="/common/admin/menu.jsp" %>

        <div class="main-content-list">

            <dec:body/>

<%--            footer--%>
            <%@include file="/common/admin/footer.jsp" %>
        </div>
    </div>
    <c:if test="${not empty message}">
        <%--        success or error--%>
        <div class="alert alert-${alert}">
                ${message}
        </div>
    </c:if>

    <script src="<c:url value="/template/admin/js/paging.js"/> "></script>
    <script src="<c:url value="/template/admin/js/logoutClick.js" /> "></script>
    <script src = "<c:url value="/template/admin/js/menuClick.js" /> "> </script>
    <script>
        var linkNow = document.querySelectorAll('.list-user__item');
        let currentHref= '<%= request.getServletPath() %>';
        btnMenuitem.forEach(item => {
            var link = item.querySelector('a');
            link.style.backgroundColor = 'white';
            link.style.color = 'var(--text-color)';
        })
        listUser.forEach(item => {
            item.style.height = '0px';
        })

        linkNow.forEach(item => {
            var tagA = item.querySelector('a');
            let itemHref = tagA.href.substr(tagA.href.indexOf('/',8));
            console.log(itemHref);
            if (itemHref.startsWith(currentHref)) {
                tagA.style.background = 'rgba(48,165,255,0.7)';
                tagA.style.color = 'white';
                var parents =item.parentElement;
                var topElement = parents.previousElementSibling;
                var childElement = topElement.querySelector('a');
                childElement.style.backgroundColor = '#30a5ff';
                childElement.style.color = 'white';
                var itemof = parents.querySelectorAll('li');
                var totalHeight = 0;
                for (l = 0; l <itemof.length;l++) {
                    totalHeight += itemof[l].offsetHeight;
                }
                parents.style.height = totalHeight +'px';
                selected = topElement;
            }
        })

        window.addEventListener('load', function() {
            var currentURL = window.location.href;
            if (currentURL.includes('message')) {
                var newURL = currentURL.substr(0,currentURL.indexOf('message') -1);
                window.history.pushState({}, "", newURL);
            }
        });


    </script>
</body>
</html>
