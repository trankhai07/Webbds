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
<body style="margin: 0;">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/promotion.css" /> ">

<main style="margin: 70px 0;"  id="main">
  <div class="grid wide">
    <div id="content">
      <br>
      <br>

      <div class="row">
        <div class="col l-9 m-12 c-12">
          <div class="post-details">
            <div class="post-details__title">
              <a href="/khuyen-mai" class="">KHUYẾN MẠI</a>
              <h1>${model.name}</h1>
            </div>
            <div class="post-details__content">
              <div class="text-center">
                <img src="${model.image}" alt="">
              </div>
              <p><strong>${model.content}</strong></p>
            </div>
          </div>
        </div>

        <div class="col l-3 m-12 c-12">
          <%@include file="/common/web/sidebarSearchR.jsp" %>
        </div>
      </div>

    </div>
  </div>
</main>

</body>
</html>