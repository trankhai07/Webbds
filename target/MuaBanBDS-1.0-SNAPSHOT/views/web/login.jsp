
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
  <title>Đăng nhập</title>
</head>
<body>
<%--<div class="loginbody" style="display: flex; justify-content: center; align-items: center; height: 100vh;">--%>
<%-- --%>
<%--  <form accept-charset="UTF-8" action="<c:url value='/dang-nhap?action=login'/>" method="post">--%>

<%--    <input type="text" class="form-control" placeholder="Username" name="username">--%>


<%--    <input type="password" class="form-control" pattern=".{8,}" placeholder="Password" name="password">--%>
<%--    <div class="form-group">--%>
<%--&lt;%&ndash;      <input type="hidden" value="2" name="roleId"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <input type="hidden" value="sign_up" name="action"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;      <input type="hidden" value="success" name="check"/>&ndash;%&gt;--%>
<%--      <input type="submit" value="Đăng nhập" class="btn float-right login_btn">--%>
<%--    </div>--%>
<%--  </form>--%>
<%--</div>--%>

<link rel="stylesheet" href="<c:url value="/template/web/assets/css/dangnhap.css" />">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/promotion.css" />">
<c:if test="${not empty message}">
  <%--        success or error--%>
  <div class="alert alert-${alert}">
      ${message}
  </div>
</c:if>
<main style="margin: 70px 0;" id="main">

  <div class="grid-dn wide-dn grid wide">
    <div id="content-dn" style="margin-top: 95px ">


      <div class="row">
        <div class="col-inner-dn text-center-dn">
          <div class="container section-title-container">
            <h1 class="section-title section-title-center"><b></b><span class="section-title-main"
                                                                        style="color:rgb(0, 95, 42); text-align: center;">ĐĂNG NHẬP TÀI KHOẢN</span><b></b>
            </h1>
          </div><!-- .section-title -->
          <p style="text-align: center;font-size: 15px;"><strong>Điền Usename và Password sau đó
            bấm “Login”</strong></p>
          <p style="text-align: center;"><strong>---------------</strong></p>
          <p style="text-align: center;"></p>
          <div class="ihc-login-form-wrap ihc-login-template-8"
               style=" padding: 40px 20px 15px 20px;background-color: aliceblue;margin-bottom: 15px; ">
            <form method="post" id="ihc_login_form" accept-charset="UTF-8" action="<c:url value='/dang-nhap?action=login'/>" >
              <div class="dn-form-line"><i class="ti-user"></i><input type="text" value="" id="nhap-dn_username" name="username" placeholder="Username">
              </div>
              <div class="dn-form-line"><i class="ti-lock"></i><input type="password" value="" id="nhap-dn_password" name="password" placeholder="Password">
              </div>
              <div class="dn-remember"><input type="checkbox" value="forever" name="rememberme"
                                              class="dn-input-remember"><span class="dn-label-remember">Remember Me</span>
              </div>
              <div class="dn-form-line dn-submit"><input type="submit" value="Log In" name="Submit"></div>
              <div class="impu-form-links">
                <div class="dn-form-links-reg"><a
                        href="<c:url value="/dang-ky?action=sign_up"/> ">Register</a></div>

              </div>
            </form>
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
