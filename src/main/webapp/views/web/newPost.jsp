<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:url var="APIurl" value="/api-web-post"/>
<c:url var="PostUrl" value = "/new-post"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<body>
<script src = "<c:url value="/template/web/assets/js/intlTelInput.js"/> "></script>
<link rel="stylesheet" href="<c:url value="/template/web/assets/flag/intlTelInput.css"/> ">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/newPost.css"/> ">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/promotion.css"/> ">
<main class="main" style="margin-bottom: 30px">
    <div class="grid wide">
        <div id="content content-newpost" style="margin-top: 70px">
            <div class="row">
                <div class="col l-9 m-12 c-12">
                    <div class="newPost">
                        <div class="newPost__title">
                            <h1 class="section-title">
                                <b></b>
                                <span>ĐĂNG TIN NHÀ ĐẤT CHÍNH CHỦ</span>
                                <b></b>
                            </h1>
                            <b></b>
                            <h2 style="margin-bottom: unset;">Chính chủ đăng tin bất động sản</h2>
                            <b></b>
                        </div>
                        <div class="newPost__container__content">
                            <form action="#" id = "formSubmit" class="form-newPost">
                                <div class="newPost-input">
                                    <label for="">Tên chủ nhà (Chính chủ bán - Không duyệt đăng tin của các bạn môi
                                        giới)<b> *</b></label>
                                    <br>
                                    <input oninput="checkOwner_name()" type="text" name="owner_name" id="owner_name" required>
                                    <p>Phải chính chủ thì bđs mới được duyệt đăng tin</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Số điện thoại<b> *</b></label>
                                    <br>
                                    <input oninput="checkPhone()" type="text" name="phone" id="phone" class="newPost-phone" required>
                                    <p>Điền đúng số điện để kiểm duyệt tin</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Địa chỉ bất động sản (Nếu địa chỉ không rõ ràng sẽ không duyệt
                                        đăng)<b> *</b></label>
                                    <br>
                                    <input oninput="checkAddress()" type="text" name="address" id="address" class="newPost-address" required>
                                    <p>Cụ thể tới số nhà, ngõ ngách, đường, quận, thành phố</p>
                                </div>
                                <div class="newPost-checkbox">
                                    <label class="newPost-checkbox__label" for="">Loại bất động sản<b> *</b></label>
                                    <br>
                                    <div class="newPost-checkbox__container">
                                        <div class="row">
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item1"
                                                       name="estate_type" value="Nhà mặt đất">
                                                <label for="estate-item1"> Nhà mặt đất</label>
                                            </div>
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item2"
                                                       name="estate_type" value="Đất thổ cư">
                                                <label for="estate-item2"> Đất thổ cư</label>
                                            </div>
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item3"
                                                       name="estate_type" value="Chung cư">
                                                <label for="estate-item3"> Chung cư</label>
                                            </div>
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item4"
                                                       name="estate_type" value="Văn phòng">
                                                <label for="estate-item4"> Văn phòng</label>
                                            </div>
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item5"
                                                       name="estate_type" value="MBKD">
                                                <label for="estate-item5"> MBKD</label>
                                            </div>
                                            <div class="col l-4 m-4 c-12">
                                                <input type="checkbox" onclick="onlyOne(this)" id="estate-item6"
                                                       name="estate_type" value="BĐS khác">
                                                <label for="estate-item6"> BĐS khác</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="newPost-checkbox">
                                    <label class="newPost-checkbox__label" for="">Loại tin đăng<b> *</b></label>
                                    <br>
                                    <div class="newPost-checkbox__container">
                                        <div class="row">
                                            <div class="col l-6 m-6 c-12">
                                                <input type="checkbox" onclick="onlyOne1(this)" id="estate-sell"
                                                       name="post_type" value="Bán BĐS">
                                                <label for="estate-sell"> Bán BĐS</label>
                                            </div>
                                            <div class="col l-6 m-6 c-12">
                                                <input type="checkbox" onclick="onlyOne1(this)" id="estate-rent"
                                                       name="post_type" value="Cho thuê BĐS">
                                                <label for="estate-rent"> Cho thuê BĐS</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="newPost-checkbox">
                                    <label class="newPost-checkbox__label" for="">Hình thức đăng tin<b> *</b></label>
                                    <br>
                                    <div class="newPost-checkbox__container">
                                        <input type="checkbox" onclick="onlyOne2(this)" id="estate-post1"
                                               name="post_form" value="Tin thường">
                                        <label for="estate-post1"> Tin thường (Miễn phí)</label> <br>
                                        <input type="checkbox" onclick="onlyOne2(this)" id="estate-post2"
                                               name="post_form" value="Tin nổi bật trang chủ">
                                        <label for="estate-post2"> Tin nổi bật trang chủ (200k/15 ngày)</label> <br>
                                        <input type="checkbox" onclick="onlyOne2(this)" id="estate-post3"
                                               name="post_form" value="Banner trang chủ">
                                        <label for="estate-post3"> Baner trang chủ (1 triệu/1 tháng)</label> <br>
                                    </div>
                                    <p>Lựa chọn hình thức đăng tin chính chủ</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Diện tích<b> *</b></label>
                                    <br>
                                    <input oninput="checkArea()" type="text" name="area" id="area" class="newPost-area" required>
                                    <p>Đơn vị: m2</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Giá bán/cho thuê (Ghi rõ triệu hoặc tỷ)<b> *</b></label>
                                    <br>
                                    <input oninput="checkPrice()" type="text" name="price" id="price" class="newPost-price" required>
                                    <p>Ví dụ: 5 tỷ hoặc 50 triệu/m2 hoặc 10 triệu/tháng hoặc 200k/m2/tháng</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Số tầng (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="floor" id="floor" class="newPost-floor">
                                    <p>Nếu bán hoặc cho thuê nhà</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Mặt tiền (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="frontispiece" id="frontispiece"
                                           class="newPost-frontispiece">
                                    <p>Đơn vị: m</p>
                                </div>
                                <div class="newPost-input">
                                    <label for="">Số phòng ngủ (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="bedroom" id="bedroom" class="newPost-bedroom">
                                </div>
                                <div class="newPost-input">
                                    <label for="">Số WC (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="wc" id="wc" class="newPost-wc">
                                </div>
                                <div class="newPost-input">
                                    <label for="">Nội thất (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="interior" id="interior" class="newPost-interior">
                                </div>
                                <div class="newPost-input">
                                    <label for="">Hướng (không bắt buộc)</label>
                                    <br>
                                    <input type="text" name="direct" id="direct" class="newPost-direct">
                                </div>
                                <div class = "row permission-post">
                                    <div class="col l-3 m-3 c-12">
                                        <button id = "btnUpPost" type="submit">GỬI ĐĂNG TIN</button>
                                    </div>
                                    <div class="form-permission col l-4 m-5 c-12">
                                        <span>Đăng nhập để thực hiện chức năng này</span>
                                        <div class="form-permission-log">
                                            <a href="/dang-nhap?action=login">Đăng nhập</a>
                                            <span>Chưa có tài khoản? <a href="/dang-ky?action=sign_up">Đăng ký ngay</a></span>
                                        </div>
                                    </div>
                                </div>
                                <div class = "row error_exist" style="margin-top: 10px; display: none; margin-left: 5px">
                                    <span style="color: red; font-size: 1.8em; line-height: 24px">Điền thiếu thông tin!</span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div style="margin-top: 40px" class="col l-3 m-12 c-12">
                    <%@include file="/common/web/sidebarSearchR.jsp" %>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="<c:url value="/template/web/assets/js/newPost.js" /> "></script>
<script>
    function checkExistInput() {
        const  inName = document.getElementById("owner_name");
        const  inPhone = document.getElementById("phone");
        const  inAddress = document.getElementById("address");
        const  inArea = document.getElementById("area");
        const inPrice = document.getElementById("price");
        if(inName.value == '' || inPhone.value == '' || inAddress.value == '' || inArea == '' || inPrice == '') return false;
        return true;
    }

    function  checkExistCheckBox() {
        const  blockCheck = document.querySelectorAll(".newPost-checkbox");
        for (var k = 0; k < blockCheck.length;k++) {
            var isChecked = false;
            const checkBoxes = blockCheck[k].getElementsByTagName("input");
            for(var i = 0; i < checkBoxes.length;i++) {
                if(checkBoxes[i].checked) {
                    isChecked = true;
                    break;
                }
            }
            if(isChecked == false) return false;
        }
        return true;
    }
    function cutPrice(values) {
        const value = values['price'];
        const matches = value.match(/(\d+)/);
        let number = 0;
        if(matches && matches.length > 1) {
            number = parseInt(matches[1]);
        }
        if(value.includes('triệu')) values['price'] = number;
        if(value.includes('tỷ') || value.includes('tỉ'))  values['price'] = number * 1000;
        return values;
    }
    const  btnUp = document.getElementById("btnUpPost");
    btnUp.addEventListener('click', function (e) {
        e.preventDefault();
        var form = document.getElementById("formSubmit");
        var inputs = form.querySelectorAll('input[name]');
        var values = {};
        inputs.forEach(function (input){
            var name = input.name;
            var value = '';
            if(input.type == 'checkbox') {
                if(input.checked) {
                    value = input.value;
                }
            }else {
                value = input.value;
            }
            if(value !== '') {
                values[name] = value;
            }
        })
        values = cutPrice(values);
        console.log(values);
        const blockLog = document.querySelector(".form-permission");
        <c:if test="${empty USERMODEL}">
            blockLog.style.display = 'flex';
        </c:if>
        <c:if test="${not empty USERMODEL}">
            blockLog.style.display = 'none';
            const blockError = document.querySelector(".error_exist");
            const a = checkExistInput();
            const b = checkExistCheckBox();
            if(a && b) {
                blockError.style.display = 'none';
                updateNewPost(values);
            }else {
                blockError.style.display = 'block';
            }
        </c:if>
    })
    function updateNewPost(data) {
        var url = '/api-web-post';
        fetch(url, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
        })
            .then(function (result) {
                window.location.href = '/new-post' + '?message=post_success';
            })
            .catch(function (error) {
                // window.location.href = NewURL + '?type=list&page=1&maxPageItem=5&message=error_system';
                alert("fail")
            });
    }
</script>

</body>
</html>