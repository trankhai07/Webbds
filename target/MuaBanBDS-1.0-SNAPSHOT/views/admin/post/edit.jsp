<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<c:url var="APIurl" value="/api-admin-post"/>
<c:url var="NewURL" value="/admin-post"/>
<c:if test="${not empty editBr}">
    <c:set value="ok" var="brow"/>
</c:if>
<html>
<head>
    <title>Sửa bài đăng</title>
</head>
<body>
<div class="main-content__inner">
    <div class="main-edit-inner">
        <div class="grid">
            <div class="main-content-topic">
                <ul class="topic-list">
                    <li class="section-main">
                        <i class="fa fa-home home-icon"></i>
                        <span><a href="/admin-home">Trang chủ</a></span>
                    </li>
                    <li class="topic-section">
                        <i class="fa-solid fa-angle-right"></i>
                        <c:if test="${not empty model.title}">
                            <span style="color: #318cc9;"><a href="/admin-post?type=list">Danh sách bài đăng</a> </span>
                        </c:if>
                        <c:if test="${empty model.title}">
                            <span style="color: #318cc9;"><a href="/admin-browse?type=browse">Duyệt các bài đăng</a> </span>
                        </c:if>
                    </li>
                    <li class="topic-section">
                        <i class="fa-solid fa-angle-right"></i>
                        <c:if test="${empty model.id}">
                            <span>Thêm mới</span>
                        </c:if>
                        <c:if test="${not empty model.id}">
                            <c:if test="${empty model.title}">
                                <span>Duyệt </span>
                            </c:if>
                            <c:if test="${not empty model.title}">
                                <span>Chỉnh sửa</span>
                            </c:if>
                        </c:if>
                    </li>
                </ul>
            </div>
            <div class="main-content-edit">
                <div class="row">
                    <!-- message -->
                </div>
                <div class="row">
                    <div class="col l-12 c-12 m-12">
                        <form action="" id="formSubmit">
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Mô tả</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.title}" name="title"
                                           id="title" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Tên chủ nhà</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.owner_name}"
                                           name="owner_name" id="owner_name" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Số điện thoại</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.phone}" name="phone"
                                           id="phone" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Địa chỉ</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.address}" name="address"
                                           id="address" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Loại bất động sản</label>
                                <div class="col l-10 c-7 m-9">
                                    <select class="form-input-edit" name="estate_type" id="estate_type">
                                        <c:if test="${empty model.estate_type}">
                                            <option selected="selected">Chọn loại bất động sản</option>
                                        </c:if>
                                        <c:if test="${not empty  model.estate_type}">
                                            <option selected="selected">${model.estate_type}</option>
                                        </c:if>
                                        <option>Nhà mặt đất</option>
                                        <option>Đất thổ cư</option>
                                        <option>Chung cư</option>
                                        <option>Văn phòng</option>
                                        <option>MBKD</option>
                                        <option>BĐS khác</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Loại tin đăng</label>
                                <div class="col l-10 c-7 m-9">
                                    <select class="form-input-edit" name="post_type" id="post_type">
                                        <c:if test="${empty model.post_type}">
                                            <option selected="selected">Chọn loại tin đăng</option>
                                        </c:if>
                                        <c:if test="${not empty model.post_type}">
                                            <option selected="selected">${model.post_type}</option>
                                        </c:if>
                                        <option>Bán BĐS</option>
                                        <option>Cho thuê</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Hình thức đăng tin</label>
                                <div class="col l-10 c-7 m-9">
                                    <select class="form-input-edit" name="post_form" id="post_form">
                                        <c:if test="${empty model.post_form}">
                                            <option selected="selected">Chọn hình thức đăng tin</option>
                                        </c:if>
                                        <c:if test="${not empty model.post_form}">
                                            <option selected="selected">${model.post_form}</option>
                                        </c:if>
                                        <option>Tin thường</option>
                                        <option>Tin nổi bật</option>
                                        <option>Banner trang chủ</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Diện tích</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.area}" name="area"
                                           id="area" required>
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="edit-title col l-2 c-5 m-3">Giá bán/cho thuê</label>
                                <div class="col l-10 c-7 m-9">
                                    <input type="text" class="form-input-edit" value="${model.price}" name="price"
                                           id="price" required>
                                </div>
                            </div>
                            <c:if test="${not empty model.title}">
                                <div class="row form-group">
                                    <label class="edit-title col l-2 c-5 m-3">Trạng thái (đã duyệt)</label>
                                    <div class="col l-10 c-7 m-9">
                                        <select class="form-input-edit" name="status" id="status">
                                            <option>1</option>
                                        </select>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${empty model.title}">
                                <div class="row form-group">
                                    <label class="edit-title col l-2 c-5 m-3">Trạng thái (chưa duyệt)</label>
                                    <div class="col l-10 c-7 m-9">
                                        <select class="form-input-edit" name="status" id="status">
                                            <option>0</option>
                                            <option>1</option>
                                        </select>
                                    </div>
                                </div>
                            </c:if>
                            <input type="hidden" name="id" id="id" value="${model.id}">
                            <c:if test="${empty model.id}">
                                <input type="hidden" name ="usersid" id = "usersid" value="${USERMODEL.id}">
                            </c:if>
                            <c:if test="${not empty model.id}">
                                <input type="hidden" name ="usersid" id = "usersid" value="${model.usersid}">
                            </c:if>
                            <div class="row form-group">
                                <div class="col l-2 c-5 m-3">
                                    <c:if test="${empty model.id}">
                                        <button id="btnUpdate" type="submit">Thêm mới</button>
                                    </c:if>
                                    <c:if test="${not empty model.id}">
                                        <button id="btnUpdate" type="submit">Cập nhật</button>
                                    </c:if>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.getElementById('btnUpdate').addEventListener('click', function (e) {
        e.preventDefault();
        var data = {};
        var formData = new FormData(document.getElementById('formSubmit'));
        for (var item of formData.entries()) {
            data[item[0]] = item[1];
        }
        var id = document.getElementById('id').value;
        if (id === '') {
            console.log(data);
            addPost(data);
        } else {
            updatePost(data);
        }
    });

    function addPost(data) {
        var url = '${APIurl}';
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
            .then (response => response.json())
            .then(data => {
                console.log(data);
                window.location.href = '${NewURL}' + '?type=edit&id='+data.id+'&message=insert_success';
            })
            .then(function (result) {
            })
            .catch(function (error) {
                window.location.href = '${NewURL}' + '?type=edit&message=error_system';
                // alert("fail")
            });
    }

    function updatePost(data) {
        var url = '${APIurl}';
        fetch(url, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })

            .then (response => response.json())
            .then(data => {
                console.log(data);
                <c:if test="${empty brow}" >
                    window.location.href = '${NewURL}' + '?type=edit&id='+data.id+'&message=update_success';
                </c:if>
                <c:if test="${not empty brow}">
                    window.location.href = '/admin-browse?type=edit&id='+data.id+'&message=update_success';
                </c:if>
            })
            .then(function (result) {

            })
            .catch(function (error) {
                window.location.href = '${NewURL}' + '?type=list&message=error_system';
                // alert("fail")
            });
    }
</script>
</body>
</html>

