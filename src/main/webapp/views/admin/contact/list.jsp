
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<c:url var="contactUrl" value="/admin-contact" />
<html>
<head>
    <title>Danh sách yêu cầu</title>
</head>
<body>
<style>

</style>
<div class="main-content__inner">
    <div class="grid">
        <div class="main-content-topic">
            <ul class="topic-list">
                <li class="section-main">
                    <i class="fa fa-home home-icon"></i>
                    <span><a href="admin-home" >Trang chủ</a> </span>
                </li>
                <li class="topic-section">
                    <i class="fa-solid fa-angle-right"></i>
                    <span> <a href="<c:url value="admin-contact?type=list" /> " > Danh sách yêu cầu</a> </span>
                </li>
<%--                <li class="topic-section">--%>
<%--                    <i class="fa-solid fa-angle-right"></i>--%>
<%--                    <span>Chỉnh sửa</span>--%>
<%--                </li>--%>
            </ul>
        </div>
        <div class="main-list">
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
                                <th>Tên</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Ngày gửi</th>
                                <th>Nội dung</th>
<%--                                <th>Thao tác</th>--%>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${model}">
                                <tr>
                                    <td><input type="checkbox" id="checkbox_${item.id}"
                                               value="${item.id}"></td>
                                    <td>${item.name}</td>
                                    <td class="" >${item.email}</td>
                                    <td>${item.phone}</td>
                                    <td>${item.createddate}</td>
                                    <td>${item.request}</td>
<%--                                    <td><a href="<c:url value="admin-promo?type=edit&id=${item.id}"/> ">--%>
<%--                                        <i style="font-size: 26px;" class="fa-solid fa-pen-to-square"></i>--%>
<%--                                    </a></td>--%>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
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
                        <a href="admin-contact?type=list&pagenum=${currentPage-1}" class="${1==currentPage?"active":"normal"}"><i class="fa-solid fa-chevron-left"></i></a>
                    </c:if>
                    <c:forEach begin="${1}" end="${numOfPage}" var="i">
                        <a href="admin-contact?type=list&pagenum=${i}" class="${i==currentPage?"active":"normal"} items-page">${i}</a>
                    </c:forEach>
                    <c:if test="${currentPage!=numOfPage}">
                        <a href="admin-contact?type=list&pagenum=${currentPage+1}" class="${numOfPage==currentPage?"active":"normal"}"> <i class="fa-solid fa-chevron-right"></i> </a>
                    </c:if>
                </div>
            </div>
        </c:if>
    </div>
</div>


<script>
    const items = document.querySelectorAll(".items-page");
    const page = document.querySelector(".pagination");
    const activepage = document.querySelector(".active");
    const index = Array.from(items).indexOf(activepage);
    // items.forEach(item => {
    //     item.style.display = 'none';
    // })
    var pageWidth = Math.max(document.documentElement.clientWidth, document.body.clientWidth);
    if(items.length > 5) {
        items.forEach(item => {
            item.style.display = 'none';
        })
        if (pageWidth < 740) {
            if(index < 1) {
                for(let i = 0; i <=2;i++) {
                    items[i].style.display = 'block';
                }
            }else if(index > items.length-2) {
                for(let i = items.length-3; i < items.length;i++) {
                    items[i].style.display = 'block';
                }
            }else {
                for(let i = index -1 ;i <= index+1;i++) {
                    items[i].style.display = 'block';
                }
            }
        }else {
            if(index < 2) {
                for(let i = 0; i <=4;i++) {
                    items[i].style.display = 'block';
                }
            }else if(index > items.length-3) {
                for(let i = items.length-5; i < items.length;i++) {
                    items[i].style.display = 'block';
                }
            }else {
                for(let i = index -2 ;i <= index+2;i++) {
                    items[i].style.display = 'block';
                }
            }
        }
    }

    document.querySelector('#btnDelete').addEventListener('click',function() {
        var data = {'ids': [] };
        document.querySelectorAll('tbody input[type=checkbox]:checked').forEach(function (item) {
            data['ids'].push(item.value);
        });
        if (data['ids'].length > 0) deleteContact(data);
    });

    async function deleteContact(data) {
        try {
            let response = await fetch('/api-admin-contact', {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json;charset=utf-8'
                },
                body: JSON.stringify(data)
            });
            let result = await response.json();
            window.location.href = "${contactUrl}?type=list&message=delete_success";
        } catch (error) {
            window.location.href = "${contactUrl}?type=list&message=error_system";
        }

    }
</script>
</body>
</html>
