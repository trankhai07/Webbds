<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<div class="main-content-footer">
  <c:if test="${empty USERMODEL}">
    <div class="footer-contact">
      <b>ADMIN Page </b>
    </div>
  </c:if>

  <c:if test="${not empty USERMODEL}">
    <div class="footer-contact">
      <b>ADMIN Page </b> by NGO DUC PHUONG
    </div>
  </c:if>
</div>
