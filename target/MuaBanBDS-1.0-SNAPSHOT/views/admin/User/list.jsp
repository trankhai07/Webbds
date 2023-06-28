
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
  <title>Danh sách người dùng</title>
</head>
<body>
<div class="main-content__inner" style="min-height: 598px;">
  <div class="grid">
    <div class="main-content-topic">
      <ul class="topic-list">
        <li class="section-main">
          <i class="fa fa-home home-icon"></i>
          <span><a href="/admin-home">Trang chủ</a></span>

        </li>
        <li class="topic-section">
          <i class="fa-solid fa-angle-right"></i>
          <span> <a href="<c:url value="admin-user?type=list" /> "  style="text-decoration: none;color: #166ea9;font-size: 12px;"> Danh sách người dùng</a> </span>
        </li>
        <%--                <li class="topic-section">--%>
        <%--                    <i class="fa-solid fa-angle-right"></i>--%>
        <%--                    <span>Chỉnh sửa</span>--%>
        <%--                </li>--%>
      </ul>
    </div>
    <div class="main-list" style="margin-top: 0px">
      <form  action="<c:url value='/admin-user'/>" method="get" class="" style="display: inline-block; position: relative; top:53px; left: 152px">
          <span style="    position: absolute; top: 9px; left: -134px;font-size: 17px; color: #484545;">Search by phone</span>
        <div class="" style="display: flex;">
          <input type="text" class="" placeholder="Vd:  0396781123" name="phone" style="padding: 2px 30px 2px 5px;" >
          <input type="hidden" class=""  name="type" value="search" >
          <input type="hidden" class=""  name="check" value="1" >
          <button id="btnsearch" type="submit" style="padding: 5px; background-color: #3b3434; border: 1px solid black; cursor: pointer; border-radius: 0px; ">
            <span> <i class="fa fa-search" aria-hidden="true"  style="display: inline-block; padding: 5px;font-size: 15px "></i></span>
          </button>
        </div>
      </form>
      <div class="main-btn">
        <button id="btnDelete" class="btn btn-warning" ><i class="fa-solid fa-trash"></i>  Xoá</button>
      </div>
      <div class="row">
        <div class="col c-12 l-12 m-12">
          <div class="table-list">
            <table class="table-border">
              <thead>
              <tr>
                <th>Chọn</th>
                <th>FullName</th>
                <th>Username</th>
                <th>Email</th>
                <th>Phone</th>
                <th>City</th>
                <th>Namerole</th>
                <th>Duedate</th>
                <th>Edit</th>
              </tr>
              </thead>
              <tbody>
              <c:if test="${model != null}">
                <c:forEach var="item" items="${model}">
                  <tr>
                    <td><input type="checkbox" id="checkbox_${item.id}"
                               value="${item.id}"></td>
                    <td>${item.name}</td>
                    <td>${item.username}</td>
                    <td>${item.email}</td>
                    <td>${item.phone}</td>
                    <td>${item.city}</td>
                    <td>${item.getRole().name}</td>
                    <td>${item.duedate}</td>
                    <td><a href="<c:url value="admin-user?type=edit&id=${item.id}"/> ">
                      <i style="font-size: 26px;" class="fa-solid fa-pen-to-square"></i>
                    </a></td>
                  </tr>
                </c:forEach>

              </c:if>

              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<c:if test="${!check.equals('1')}">
  <c:set value="${requestScope.currentPage}" var="currentPage"/>
  <c:set value="${requestScope.numOfPage}" var="numOfPage"/>
  <div class="pagination" style="margin-bottom: 0px">
    <div class = "paging-item">
      <c:if test="${currentPage!=1}">
        <a href="admin-user?type=list&pagenum=${currentPage-1}" class="${1==currentPage?"active":"normal"}"><i class="fa-solid fa-chevron-left"></i></a>
      </c:if>
      <c:forEach begin="${1}" end="${numOfPage}" var="i">
        <a href="admin-user?type=list&pagenum=${i}" class="${i==currentPage?"active":"normal"} items-page">${i}</a>
      </c:forEach>
      <c:if test="${currentPage!=numOfPage}">
        <a href="admin-user?type=list&pagenum=${currentPage+1}" class="${numOfPage==currentPage?"active":"normal"}"> <i class="fa-solid fa-chevron-right"></i> </a>
      </c:if>
    </div>
  </div>
</c:if>

<script>
  document.querySelector("#btnDelete").addEventListener('click', async function (e) {
    var data={};
    var checkboxes = document.querySelectorAll('tbody input[type="checkbox"]:checked');
    var ids = Array.from(checkboxes).map(function(checkbox) {
      return checkbox.value;
    });
    data['ids'] = ids;
    if (data['ids'].length > 0)  deleteUser(data);
  })

  async function deleteUser(data) {
    try{
      let response = await fetch('/api-admin-user', {
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json;charset=utf-8'
        },
        body: JSON.stringify(data)
      });
      let result = await response.json(); // trả đối tượng dưới dạng chuỗi json
      window.location.href = "${APIurl}?type=list&message=delete_success";
    } catch {

      window.location.href = "${APIurl}?type=list&message=error_system" ;
    }
  }


</script>
</body>
</html>
