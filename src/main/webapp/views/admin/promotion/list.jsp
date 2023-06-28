
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="promoUrl" value="admin-promo" />
<html>
<head>
    <title>Danh sách bài đăng</title>
</head>
<body>
<style>
.content {
    max-width: 400px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
</style>
<div class="main-content__inner">
    <div class="grid">
        <div class="main-content-topic">
            <ul class="topic-list">
                <li class="section-main">
                    <i class="fa fa-home home-icon"></i>
                    <span><a href="/admin-home">Trang chủ</a> </span>
                </li>
                <li class="topic-section">
                    <i class="fa-solid fa-angle-right"></i>
                    <span> <a href="<c:url value="admin-promo?type=list" /> " > Danh sách khuyến mại</a> </span>
                </li>
<%--                <li class="topic-section">--%>
<%--                    <i class="fa-solid fa-angle-right"></i>--%>
<%--                    <span>Chỉnh sửa</span>--%>
<%--                </li>--%>
            </ul>
        </div>
        <div class="main-list">
            <div class="main-btn">
                <a id="btnAddOrEdit" class="btn" href="<c:url value="/admin-promo?type=edit"/> "><i style="font-size:16px ;" class="fa-solid fa-floppy-disk"></i>  Thêm</a>
                <button id="btnDelete" class="btn btn-warning" ><i class="fa-solid fa-trash"></i>  Xoá</button>
            </div>
            <div class="row">
                <div class="col c-12 l-12 m-12">
                    <div class="table-list">
                        <table class="table-border">
                            <thead>
                            <tr>
                                <th>Chọn</th>
                                <th>Ảnh</th>
                                <th>Tên</th>
                                <th style="width: 45%" >Nội dung</th>
                                <th>Tóm tắt</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${model}">
                                <tr>
                                    <td><input type="checkbox" id="checkbox_${item.id}"
                                               value="${item.id}"></td>
                                    <td> <img style="width: 60px; height: 60px" src="${item.image}" />  </td>
                                    <td>${item.name}</td>
                                    <td class="content" >${item.content}</td>
                                    <td>${item.summary}</td>
                                    <td><a href="<c:url value="admin-promo?type=edit&id=${item.id}"/> ">
                                        <i style="font-size: 26px;" class="fa-solid fa-pen-to-square"></i>
                                    </a></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    document.querySelector('#btnDelete').addEventListener('click',function() {
        var data = {'ids': [] };
        document.querySelectorAll('tbody input[type=checkbox]:checked').forEach(function (item) {
            data['ids'].push(item.value);
        });
        if (data['ids'].length > 0) deletePromo(data);
    });

    async function deletePromo(data) {
        try {
            let response = await fetch('/api-admin-promo', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json;charset=utf-8'
                },
                body: JSON.stringify(data)
            });
            let result = await response.json();
            window.location.href = "${promoUrl}?type=list&message=delete_success";
        } catch (error) {
            window.location.href = "${promoUrl}?type=list&message=error_system";
        }

    }
</script>
</body>
</html>
