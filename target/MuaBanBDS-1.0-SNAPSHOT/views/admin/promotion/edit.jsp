
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="promoUrl" value="admin-promo" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="main-content__inner">
  <div class="grid">
    <div class="main-content-topic">
      <ul class="topic-list">
        <li class="section-main">
          <i class="fa fa-home home-icon"></i>
          <span><a style="text-decoration: none" href="<c:url value="admin-home" /> " > Trang chủ</a></span>
        </li>
        <li class="topic-section">
          <i class="fa-solid fa-angle-right"></i>
          <span> <a style="text-decoration: none" href="<c:url value="admin-promo?type=list" /> " > Danh sách khuyến mại</a> </span>
        </li>
        <li class="topic-section">
            <i class="fa-solid fa-angle-right"></i>
            <span>Chỉnh sửa</span>
        </li>
      </ul>
    </div>
    <form action="<c:url value="api-admin-promo" />" enctype="multipart/form-data" method="${empty model.id ? "post" : "put" }">
      <div class="main-edit">
        <br>
        <div class="row">
          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3 m-3 c-12" for="name">Tên khuyến mại</label>
                <div class="col l-9 m-9 c-12">
                  <input type="text" required class="form-control" id="name" name="name" value="${model.name}">
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3 m-3 c-12" for="content">Nội dung</label>
                <div class="col l-9 m-9 c-12">
                  <textarea name="content" required class="form-control" id="content" cols="30" rows="5 ">${model.content}</textarea>
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3 m-3 c-12" for="summary">Tóm tắt</label>
                <div class="col l-9 m-9 c-12">
                  <textarea required name="summary" class="form-control" id="summary" cols="30" rows="3" >${model.summary}</textarea>

                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3 m-3 c-12" for="image">Ảnh</label>
                <div class="col l-9 m-9 c-12">
                  <input required  type="file" accept="image/*"  class="form-control" id="image" name="image">
                  <span>Để trống nếu giữ nguyên</span>
                </div>
              </div>
            </div>
          </div>



        </div>
        <input hidden value="${model.id}" name="id" id="id">

        <c:if test="${not empty model.id}">
          <button type="submit" id="btnAddOrUpdate" class="btn btn-primary">Cập nhật</button>
        </c:if>
        <c:if test="${empty model.id}">
          <button type="submit" id="btnAddOrUpdate" class="btn btn-primary">Thêm mới</button>
        </c:if>
      </div>
    </form>
  </div>
</div>
<script>
document.querySelector('#btnAddOrUpdate').addEventListener('click', function (e) {
  e.preventDefault();
  var form = document.querySelector('form');
  var formData = new FormData(form);
  var id = document.querySelector('input[name="id"]').value;
  if (id == "") {
    addPromo(formData);
  } else {
    updatePromo(formData);
  }
})

  async function addPromo(data) {
    try {
      const response = await fetch("/api-admin-promo", {
        method: "POST",
        body: data
      });

      const result = await response.json();
      window.location.href = "${promoUrl}?type=edit&id="+result.id+"&message=insert_success";
    } catch (error) {
      window.location.href = "${promoUrl}?type=list&message=error_system";
    }
  }

  async function updatePromo(data) {
    try {
      const response = await fetch("/api-admin-promo", {
        method: "PUT", // or 'PUT'
        body: data
      });

      const result = await response.json();
      window.location.href = "${promoUrl}?type=edit&id="+result.id+"&message=update_success";
    } catch (error) {
      window.location.href = "${promoUrl}?type=list&message=error_system";
    }
  }

</script>
</body>
</html>
