<%--
  Created by IntelliJ IDEA.
  User: AD
  Date: 6/1/2023
  Time: 5:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>

<html>
<head>
    <title>Đăng ký</title>
</head>
<body>

<link rel="stylesheet" href="<c:url value="/template/web/assets/css/dangky.css" />">
<link rel="stylesheet" href="<c:url value="/template/web/assets/css/promotion.css" />">
<c:if test="${not empty message}">
    <%--        success or error--%>
    <div class="alert alert-${alert}">
            ${message}
    </div>
</c:if>
<main style="margin: 70px 0;" id="main">
    <div class="grid wide">
        <div id="content">
            <br>
            <br>
            <div class="row">
                <div class="col-inner-dk"
                     style="background-color: rgba(116, 113, 113, 0.12); height: auto !important;width: 100%; ">
                    <div id="gap-337766041" class="gap-element clearfix" style="display:block; height:auto; ">

                        <style scope="scope">
                            #gap-337766041 {
                                padding-top: 40px;
                            }
                        </style>
                    </div>
                    <div class="lg-title" style="width: 100%;margin-top: 35px; margin-bottom:60px;">
                        <h1 class="uppercase" style="text-align: center; font-size: 25px;"><strong>ĐĂNG KÝ THÀNH
                            VIÊN</strong></h1>
                        <h2 class style="text-align: center; font-size: 16px;">Điền đầy đủ thông tin chính xác – Xác
                            minh Email sau khi đăng ký</h2>
                    </div>
                    <div class="iump-register-form ihc-register-12" style="width: 100%; margin: auto;">
                        <form id ="formUser"accept-charset="UTF-8" action="<c:url value='/dang-ky?action=sign_up'/>" method="post">
                            <div class="dangky-col">
                                <div class="nhap-nd-dk nhap-dangky" ><label
                                        class="labels-dangky"><span class="ihc-required-sign">*</span>Fullname</label>
                                    <br>
                                    <input type="text" name="name" id="name"  placeholder="VD: Nguyễn Văn A"><br>
                                </div>
                                <div class="nhap-nd-dk nhap-dangky" id="ihc_reg_text_7447"><label
                                        class="labels-dangky"><span class="ihc-required-sign">*</span>Username</label>
                                    <br>
                                    <input type="text" name="username" id="username"  placeholder="VD: username1"><br>
                                </div>
                                <div class="nhap-nd-dk nhap-dangky" id="ihc_reg_text_9991"><label
                                        class="labels-dangky"><span
                                        class="ihc-required-sign">*</span>Email</label><br>
                                    <input type="text" name="email" id="email"  placeholder="VD: thnh@gmail.com"><br>
                                    <div > <p class = "ghichu">Nhập đúng định dạng xxxx@xxxx.com </p></div>
                                </div>
                                <div class="nhap-nd-dk dk-nhap-password" ><label
                                        class="labels-dangky"><span
                                        class="ihc-required-sign">*</span>Password</label><br
                                        id="import-text1"><input type="password" name="password" id="pass1"
                                                                placeholder="VD: TH123456"
                                                                data-rules="6,1"> </br> </div>
                                <div > <p class = "ghichu">Mật khẩu tối thiểu 8 kí tự bao gồm cả chữ và số</p></div>
                                <div class="nhap-nd-dk dk-nhap-password" id="ihc_reg_password_2750"><label
                                        class="labels-dangky"><span class="ihc-required-sign">*</span>Confirm
                                    Password</label><br id="import-text"><input type="password" name="pass2" id="pass2"
                                                                                 placeholder="VD: Th123456"
                                                                                data-rules="6,1"> </br>
                                    <div > <p class = "ghichu">Xác nhận mật khẩu đúng với mật khẩu ở trên</p></div>
                                </div>
                            </div>
                            <div class="dangky-col ihc-register-secundary-col">
                                <div class="nhap-nd-dk nhap-dangky" id="ihc_reg_text_620"><label
                                        class="labels-dangky"><span class="ihc-required-sign">*</span>Số điện
                                    thoại</label>
                                    <br><input type="text" name="phone" id="sdt"  placeholder="VD 0916123456"
                                               > </br>
                                    <label class="iump-form-sublabel" style="font-size: 17px; color: indianred;"></label>
                                    <div > <p class = "ghichu">Gồm 10 số có số 0 ở đầu </p></div>
                                </div>

                                <div class="nhap-nd-dk nhap-dangky" ><label
                                        class="labels-dangky"><span
                                        class="ihc-required-sign">*</span>Thành Phố</label>
                                    <br><input type="text" name="city" id="thanhpho"  placeholder="VD: Hà Nội"
                                               > </br>
                                    <br><label class="iump-form-sublabel" style="font-size: 17px; color: indianred"></label> </br>
                                </div>

                            </div>
                            <input type="hidden" value="2" name="roleId"/>
                            <div class="iump-submit-form"><input type="submit" value="Register"
                                                                  id="btnSubmit"
                                                                 class="button button-primary button-large"></div>

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
<script >
    function validatePhoneNumber(phoneNumber) {
        var regexPhone = /^[0-9]{10,}$/; // Để kiểm tra 10 chữ số trở lên, bạn có thể sử dụng /^[0-9]{10,}$/;
        return regexPhone.test(phoneNumber);
    }

    function validatePassword(pass) {
        var regexPass = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        return regexPass.test(pass);
    }

    function validateEmail(email) {
        var regexEmail = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
        return regexEmail.test(email);
    }

  function  validateCity(city){
        if(city === "") return false;
        return true;
  }
    const nodeList = document.querySelectorAll(".ghichu");
    document.addEventListener('DOMContentLoaded', function() {
        var email = document.getElementById("email");
        email.addEventListener('keyup', function() {
            var emailValue = this.value;
            if (!validateEmail(emailValue)) {
                email.style.border = 'solid 2px red';
                nodeList[0].style.color ="red";
            } else {
                email.style.border = 'solid 2px green';
                nodeList[0].style.color ="#292626";
            }
        });

        var phone = document.getElementById("sdt");
        phone.addEventListener('keyup', function() {
            var phoneValue = this.value;
            if (!validatePhoneNumber(phoneValue)) {
                phone.style.border = 'solid 2px red';
                nodeList[3].style.color ="red";
            } else {
                phone.style.border = 'solid 2px green';
                nodeList[3].style.color ="#292626";
            }
        });

        var password1 = document.getElementById("pass1");
        password1.addEventListener('keyup', function() {
            var passValue = this.value;
            if (!validatePassword(passValue)) {
                password1.style.border = 'solid 2px red';
                nodeList[1].style.color ="red";
            } else {
                password1.style.border = 'solid 2px green';
                nodeList[1].style.color ="#292626";
            }
        });

        var password2 = document.getElementById("pass2");
        password2.addEventListener('keyup', function() {
            var newpassValue = this.value;
            if (password2.value !== newpassValue) {
                password2.style.border = 'solid 2px red';
                nodeList[2].style.color ="red";
            } else {
                password2.style.border = 'solid 2px green';
                nodeList[2].style.color ="#292626";
            }
        });
        var name1 = document.getElementById("name");
        name1.addEventListener('keyup', function() {
            var fullname = this.value;
            if (fullname === "") {
                name1.style.border = 'solid 2px red';
            } else {
                name1.style.border = 'solid 2px green';
            }
        });
        var username1 = document.getElementById("username");
        username1.addEventListener('keyup', function() {
            var username = this.value;
            if (username === "") {
                username1.style.border = 'solid 2px red';
            } else {
                username1.style.border = 'solid 2px green';
            }
        });
        var city1 = document.getElementById("thanhpho");
        city1.addEventListener('keyup', function() {
            var city = this.value;
            if (city === "") {
                city1.style.border = 'solid 2px red';
            } else {
                city1.style.border = 'solid 2px green';
            }
        });

    });

    var btnsub = document.getElementById("btnSubmit");
    btnsub.addEventListener('click',async function (e) {
        e.preventDefault();

        let name1 = document.querySelector("input[name='name']").value;
        let email1 = document.querySelector("input[name='email']").value;
        let phone1 = document.querySelector("input[name='phone']").value;
        let roleId1 = document.querySelector("input[name='roleId']").value ;
        let username1 = document.querySelector("input[name='username']").value ;
        let password1 = document.querySelector("input[name='password']").value ;
        let password2 = document.querySelector("input[name='pass2']").value ;
        let city1 = document.querySelector("input[name='city']").value ;
        let data = {
            name: name1,
            username: username1,
            password: password1,
            city: city1,
            email: email1,
            phone: phone1,
            roleId: roleId1,
        }
        if(validateEmail(email1) && validatePhoneNumber(phone1) && validatePassword(password1) && (password1=== password2) &&validateCity(city1) && name1 != "" ) {
                    FORM(data);
        }
        else{
            if(name1 === "") document.querySelector("input[name='name']").style.border = 'solid 2px red';
            else document.querySelector("input[name='name']").style.border = 'solid 2px green';
            if(username1 === "") document.querySelector("input[name='username']").style.border = 'solid 2px red';
            else document.querySelector("input[name='username']").style.border = 'solid 2px green';
            if(!validateEmail(email1)) {
                document.querySelector("input[name='email']").style.border = 'solid 2px red';
                nodeList[0].style.color ="red";
            }
            else{
                document.querySelector("input[name='email']").style.border = 'solid 2px green';
                nodeList[0].style.color ="#292626";
            }
            if(!validatePhoneNumber(phone1)) {
                document.querySelector("input[name='phone']").style.border = 'solid 2px red';
                nodeList[3].style.color ="red";
            }
            else{
                document.querySelector("input[name='phone']").style.border = 'solid 2px green';
                nodeList[3].style.color ="#292626";
            }
            if(!validatePassword(password1)) {
                document.querySelector("input[name='password']").style.border = 'solid 2px red';
                nodeList[1].style.color ="red";
            }
            else{
                document.querySelector("input[name='password']").style.border = 'solid 2px green';
                nodeList[1].style.color ="#292626";
            }
            if(!validateCity(city1))    document.querySelector("input[name='city']").style.border = 'solid 2px red';
            else document.querySelector("input[name='city']").style.border = 'solid 2px green';
            if(password1 != password2)  {
                document.querySelector("input[name='pass2']").style.border = 'solid 2px red';
                nodeList[2].style.color ="red";
            }
            else{
                document.querySelector("input[name='pass2']").style.border = 'solid 2px green';
                nodeList[2].style.color ="#292626";
            }
        }
    })

    async function FORM(data) {
        try{
            let response = await fetch('/dang-ky?action=sign_up', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json;charset=utf-8'
                },
                body: JSON.stringify(data)
            });
        let result = await response.json(); // trả đối tượng dưới dạng chuỗi json
            if(result == "username_exist"){
                window.location.href = "/dang-ky?action=sign_up&message="+ result +"&alert=error" ;
            }
            else if(result == "email_exist" ){
                window.location.href = "/dang-ky?action=sign_up&message="+ result +"&alert=error" ;
            }
            else if(result == "phone_exist"){
                window.location.href = "/dang-ky?action=sign_up&message="+ result +"&alert=error" ;
            }
            else{
                window.location.href = "/dang-ky?action=sign_up&message=register_success&alert=success" ;
            }

    } catch(error) {
        window.location.href = "/dang-ky?action=sign_up&message=create_error&alert=error" ;
    }
    }

</script>
</body>
</html>
