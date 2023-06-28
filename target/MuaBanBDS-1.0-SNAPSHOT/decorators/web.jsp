<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<c:url value="/template/web/assets/img/logo_3.jpg"/>" type="image/jpg" sizes="16x16">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/base.css" /> ">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/grid.css" />">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/home.css" />">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/template/web/assets/fonts/fontawesome-free-6.2.1-web/css/all.css" /> ">
    <title>Sàn giao dịch bất động sản</title>
</head>
<body>
<!-- Wrapper contain header, content -->
<div class="Wrapper">
    <!-- Header -->
    <%@include file="/common/web/header.jsp" %>
    <dec:body/>
</div>

    <c:if test="${not empty message}">
<%--        success or error--%>
        <div class="alert alert-${alert}">
                ${message}
        </div>
    </c:if>

    <!-- Footer -->
<div style="display:block;">
    <%@include file="/common/web/footer.jsp" %>
</div>
<script src="<c:url value="/template/web/assets/js/backhome.js"/> "></script>
<script src="<c:url value="/template/web/assets/js/clickmenu.js" /> "></script>
<script src="<c:url value="/template/web/assets/js/selectoption.js" /> "></script>
<script>
    const headerItems = document.querySelectorAll('.header-item--link');
    let currentURL = '<%= request.getServletPath() %>';
    // document.querySelector('.header-itemlink--home').classList.remove('header-itemlink--home');
    headerItems.forEach(item => {
        let itemHref = item.href.substr(item.href.indexOf('/',8));
        if (itemHref.startsWith(currentURL) && !itemHref.startsWith("/find-post")) item.classList.add('header-itemlink--home');
    })
    let url="<%=request.getParameter("province1")%>";
    let url1="<%=(String)request.getAttribute("pagefrom")%>";
    if (url.includes("Hà Nội") || url1=="HÀ NỘI" || url1==" Hà Nội") document.querySelectorAll('.header-item--link')[1].classList.add('header-itemlink--home');
    if (url.includes("TPHCM") || url1=="TPHCM" || url1==" TPHCM") document.querySelectorAll('.header-item--link')[2].classList.add('header-itemlink--home');


    // header tim kiem
    function search() {
        var input = document.getElementById("search-input").value;
        if (input.trim() !== "") {
            window.location.href = "/find-post?type=1&pagefrom=TÌM+KIẾM&title1=" + input +"&postType1=&province1=&district1=&estateType1=&minArea1=&maxArea1=&priceRange1=Khoảng+giá";
        }
    }
    let headerSearch = document.getElementById('search-input');
    headerSearch.addEventListener('keyup', (e) => {
        if (e.keyCode === 13 ) {
            search();
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