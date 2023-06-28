
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/admin-user" />
<html>
<head>
    <title>Chỉnh Sửa</title>
</head>
<body>
<div class="main-content__inner">
  <div class="grid">
    <div class="main-content-topic">
      <ul class="topic-list">
        <li class="section-main">
          <i class="fa fa-home home-icon"></i>
          <span><a style="text-decoration: none" href="<c:url value="admin-user?type=list" /> " > Trang chủ</a></span>
        </li>
        <li class="topic-section">
          <i class="fa-solid fa-angle-right"></i>
          <span> <a style="text-decoration: none" href="<c:url value="admin-user?type=list" /> " > Danh sách người dùng</a> </span>
        </li>
        <li class="topic-section">
            <i class="fa-solid fa-angle-right"></i>
            <span>Chỉnh sửa</span>
        </li>
      </ul>
    </div>
    <form action="" id="formSubmit">
      <div class="main-edit">
        <br>
        <div class="row">
          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3" for="">Fullname</label>
                <div class="col l-9">
                  <input disabled type="text" required class="form-control" name="name" value="${model.name}">
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3" for="">Email</label>
                <div class="col l-9">
                  <input disabled type="text" required class="form-control" name="email" value="${model.email}">
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3" for="">Phone</label>
                <div class="col l-9">
                  <input disabled type="text" required class="form-control" name="phone" value="${model.phone}">
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3" for="">Duedate</label>
                <div class="col l-9">
                  <input type="date" class="form-control" name="duedate" value="${model.duedate}" placeholder="yyyy-MM-dd">
                </div>
              </div>
            </div>
          </div>

          <div class="col c-12 l-12 m-12">
            <div style="margin-bottom: 40px;" class="form-group">
              <div class="row">
                <label class="col l-3" for="">Chỉnh sửa Namerole</label>
                <div class="col l-9">

                  <select class="form-control" id="" name="roleId" style="height: 35px; cursor:pointer" >
                    <option value="">Chọn Role</option>
                    <c:forEach var="item" items="${namerole}">
                      <option style="cursor:pointer" value="${item.id}" <c:if test="${item.name == model.getRole().name}">selected = "selected"</c:if> >
                          ${item.name}
                      </option>

                    </c:forEach>
                  </select>

                </div>
              </div>
            </div>
          </div>

        </div>
          <input hidden value="${model.id}" name="id" id = "id">
          <button type="submit" id="btnAddOrUpdate" class="btn btn-primary">Cập nhật</button>

      </div>
    </form>
  </div>
</div>

<script>
  document.querySelector("#btnAddOrUpdate").addEventListener('click', async function (e) {
    e.preventDefault();
    let name = document.querySelector("input[name='name']").value;
    let email = document.querySelector("input[name='email']").value;
    let phone = document.querySelector("input[name='phone']").value;
    let duedate = document.querySelector("input[name='duedate']").value ;
    let roleId = document.querySelector("select[name='roleId']").value ;
    if(duedate === "") duedate = null;
    let data = {
      id: ${model.id},
      name: name,
      email: email,
      phone: phone,
      duedate: duedate,
      roleId: roleId,
    }
    updateUser(data);
  })

  async function updateUser(data) {

  try{
    let response = await fetch('/api-admin-user', {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json;charset=utf-8'
      },
      body: JSON.stringify(data)
    });
    let result = await response.json(); // trả đối tượng dưới dạng chuỗi json
      window.location.href = "${APIurl}?type=edit&id=" + result.id + "&message=update_success" ;
    } catch {

      window.location.href = "${APIurl}?type=list&message=error_system" ;
    }
  }
</script>
</body>
</html>
