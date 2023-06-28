<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<c:url var="APIurl" value="/api-admin-post"/>
<c:url var="NewURL" value="/admin-browse"/>
<html>
<head>
    <title>Danh sách bài đăng</title>
</head>
<body>
<div class="main-content__inner">
    <div class="grid">
        <div class="main-content-topic">
            <ul class="topic-list">
                <li class="section-main">
                    <i class="fa fa-home home-icon"></i>
                    <span><a href="/admin-home">Trang chủ</a></span>
                </li>
                <li class="topic-section">
                    <i class="fa-solid fa-angle-right"></i>
                    <span>Duyệt các bài đăng mới</span>
                </li>
            </ul>
        </div>
        <div class = "main-list">
            <div class="main-btn">
                <a id="btnAddOrEdit" class="btn pull-right" href="/admin-browse?type=edit"><i style="font-size:16px ;"
                                                                                            class="fa-solid fa-floppy-disk"></i>
                    Thêm</a>
                <button id="btnDelete" class="btn btn-warning pull-right"><i class="fa-solid fa-trash"></i> Xoá</button>
            </div>
            <div class="row">
                <div class="col c-12 l-12 m-12">
                    <div class="table-list">
                        <c:if test="${empty model}">
                            <p style="margin-top:0px;margin-bottom: 20px; font-weight: bold; font-size: 1.8em; line-height: 30px">Hiện tại chưa có bài đăng mới</p>
                        </c:if>
                        <c:if test="${not empty model}" >
                            <p style="margin-top:0px;margin-bottom: 20px; font-weight: bold; font-size: 1.8em;  line-height: 30px">Các bài đăng mới</p>
                            <table class="table-border">
                                <thead>
                                <tr>
                                    <th>Duyệt</th>
                                    <th>Chọn</th>
                                    <th>Ngày đăng</th>
                                    <th>Chủ nhà</th>
                                    <th>Điện thoại liên hệ</th>
                                    <th>Mô tả</th>
                                    <th>Địa chỉ</th>
                                    <th>Loại BĐS</th>
                                    <th>Diện tích</th>
                                    <th>Giá bán/ thuê</th>
                                    <th>Nội thất</th>
                                    <th>Trạng thái</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${model}" var="item">
                                    <tr >
                                        <td>
                                            <c:url var="editURL" value="/admin-browse">
                                                <c:param name="type" value="edit" />
                                                <c:param name="id" value="${item.id}" />
                                            </c:url>
                                            <a href="${editURL}">
                                                <i style="font-size: 26px;" class="fa-solid fa-pen-to-square"></i>
                                            </a>
                                        </td>
                                        <td><input type="checkbox" id="checkbox_${item.id}"
                                                   value="${item.id}"></td>
                                        <td>${item.date}</td>
                                        <td>${item.owner_name}</td>
                                        <td>${item.phone}</td>
                                        <td>${item.title}</td>
                                        <td>${item.address}</td>
                                        <td>${item.estate_type}</td>
                                        <td>${item.area}</td>
                                        <td>${item.price}</td>
                                        <td>${item.interior}</td>
                                        <td>${item.status}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </c:if>
                    </div>
                </div>
            </div>
            <c:if test="${not empty model}" >
                <c:if test="${!check.equals('1')}">
                    <c:set value="${requestScope.currentPage}" var="currentPage"/>
                    <c:set value="${requestScope.numOfPage}" var="numOfPage"/>
                    <div class="pagination" style="margin-bottom: 0px">
                        <c:if test="${currentPage!=1}">
                            <a href="/admin-browse?type=list&pagenum=${currentPage-1}" class="${1==currentPage?"active":"normal"}"><i class="fa-solid fa-chevron-left"></i></a>
                        </c:if>
                        <c:forEach begin="${1}" end="${numOfPage}" var="i">
                            <a href="/admin-browse?type=list&pagenum=${i}" class="${i==currentPage?"active":"normal"}">${i}</a>
                        </c:forEach>
                        <c:if test="${currentPage!=numOfPage}">
                            <a href="/admin-browse?type=list&pagenum=${currentPage+1}" class="${numOfPage==currentPage?"active":"normal"}"> <i class="fa-solid fa-chevron-right"></i> </a>
                        </c:if>
                    </div>
                </c:if>
            </c:if>
        </div>
    </div>
</div>
<script>
    document.querySelector("#btnDelete").addEventListener('click', function () {
        var data = {};
        var checkboxes = document.querySelectorAll('tbody input[type=checkbox]:checked');
        var ids = Array.from(checkboxes).map(function(checkbox) {
            return checkbox.value;
        });
        data['ids'] = ids;
        if (data['ids'].length > 0) deleteP(data);
    })

    function deleteP(data) {
        var url = '${APIurl}';
        fetch(url, {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
            .then(function (result) {
                window.location.href = '${NewURL}' + '?type=browse&message=delete_success';
            })
            .catch(function (error) {
                window.location.href = '${NewURL}' + '?type=browse&message=error_system';
            });
    }
</script>
</body>
</html>
