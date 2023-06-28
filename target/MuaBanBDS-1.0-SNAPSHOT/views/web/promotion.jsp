=<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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

<main style="margin: 70px 0;" id="main">
  <div class="grid wide">
    <div id="content">
      <div class="content-header text-center">
        <div class="row">
          <div class="col l-12">
            <div class="title ">
              <h1>CHỦ ĐỀ : KHUYẾN MẠI</h1>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col l-9 m-12 c-12">
          <div class="post">
            <c:forEach var="item" items="${model}" >
              <a href="<c:url value="/khuyen-mai?type=chi-tiet&id=${item.id}" /> " class="post__item">
                <div class="row no-gutters">
                  <div class="col l-4 m-4 c-12">
                    <div class="box-image text-center">
                      <img style="width: 100%;" src="${item.image}" alt="">
                    </div>
                  </div>
                  <div class="col l-8 m-8 c-12">
                    <div class="box-text text-center">
                      <div class="box-text-item">
                        <h5 class="post__title">${item.name}</h5>

                        <p class="post__summary-text">
                          ${item.summary}
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="badge">
                  <span>${item.postedDate}</span>
                </div>
              </a>
            </c:forEach>


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